import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../../res/helper_function.dart';
import '../../../../../res/images.dart';
import '../../../../../res/render_svg.dart';
import '../../../../../res/utils.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/confirmation_dialog.dart';
import '../../../widgets/places_autocomplete_field.dart';

// StateNotifier for managing obscureText state
class ObscureTextNotifier extends StateNotifier<bool> {
  ObscureTextNotifier() : super(true); // Initially, obscureText is true

  void toggle() => state = !state;
}

// Provider for the ObscureTextNotifier
final obscureTextProvider = StateNotifierProvider<ObscureTextNotifier, bool>(
    (ref) => ObscureTextNotifier());

@RoutePage()
class ProfileSettingScreen extends ConsumerStatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  ConsumerState<ProfileSettingScreen> createState() =>
      _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends ConsumerState<ProfileSettingScreen> {
  final String apiKey = "AIzaSyCKdIyABKpYZWDwnkhKD8D2n_0JTAW3Hj8";
  List<AutocompletePrediction> placePredictions = [];
  TextEditingController locationController = TextEditingController();

  void placeAutoComplete(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", "maps/api/place/autocomplete/json", {
      "input": query,
      "key": apiKey,
    });
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);

      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  double long = 0.0;
  double lat = 0.0;
  bool isLoading = false;
  Future<void> getLongLat({bool showDialog = false}) async {
    // Position getPosition = await determinePosition();
    await determinePosition().then((value) {
      print("value $value");
      lat = value.latitude;
      long = value.longitude;
      return null;
    }).onError((error, stackTrace) async {
      //print('888^^^0000 $error');
      setState(() {
        isLoading = true;
      });
      if (showDialog) {
        final String newError = error.toString();
        print('888^^^0000 $newError');
        if (newError.contains('denied')) {
          await _showEnableLocationPopup(context,
              title: "Permission Access",
              description:
                  "Prelura requires permission for location access to function "
                  "while on this page.",
              positiveCallback: Geolocator.openAppSettings);
        } else if (newError.contains('disabled')) {
          print(" it is true");
          await _showEnableLocationPopup(context,
              title: "Location Disabled",
              description:
                  'Prelura requires location access for the proper functioning of '
                  'app. Please enable device location.',
              positiveCallback: Geolocator.openLocationSettings);
        }
      }
      print('888^^^0000 $error');
      // return HelperFunction.showToast(message: error.toString() as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = ref.watch(obscureTextProvider);

    return Portal(
      child: Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "Profile Settings",
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Optional padding for better UI
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAuthTextField(
                context,
                label: 'Name',
                hintText: 'e.g. Prelura App',
              ),
              addVerticalSpacing(16),
              _buildAuthTextField(
                context,
                label: 'Username',
                hintText: 'e.g. prelura_app',
              ),
              addVerticalSpacing(16),
              _buildAuthTextField(
                context,
                label: 'Email',
                hintText: 'e.g. app@prelura.com',
              ),
              addVerticalSpacing(16),
              PreluraAuthTextField(
                label: 'Password',
                labelStyle: _labelStyle(context),
                hintText: '*********',
                hintStyle: _hintStyle(context),
                obscureText: obscureText,
                onChanged: (value) {},
                suffixIcon: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () =>
                      ref.read(obscureTextProvider.notifier).toggle(),
                  icon: RenderSvg(
                    svgPath: obscureText
                        ? PreluraIcons.eyeIcon
                        : PreluraIcons.eyeSlashOutline,
                  ),
                ),
              ),
              addVerticalSpacing(16),
              // PlacesAutocompletionField(
              //   label: 'Location',
              //   hintText: 'e.g. Exter, United Kingdom',
              //   controller: locationController,
              //   postOnChanged: (value) {
              //     placeAutoComplete(value ?? '');
              //   },
              //   onItemSelected: (value) {
              //     if (!mounted) return;
              //     setState(() {
              //       locationController.text = value["description"];
              //     });
              //   },
              // ),

              _buildAuthTextField(context,
                  label: 'Location',
                  hintText: 'e.g. Exter, United Kingdom',
                  controller: locationController, onChanged: (value) {
                placeAutoComplete(value ?? '');
              }),
              if (placePredictions.isNotEmpty) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: placePredictions.length,
                    itemBuilder: (context, index) => LocationListTile(
                      press: () {
                        setState(() {
                          locationController.text =
                              placePredictions[index].description!;
                          placePredictions = [];
                        });
                      },
                      location: placePredictions[index].description!,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 106,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: PreluraButtonWithLoader(
            showLoadingIndicator: isLoading,
            onPressed: () async {
              setState(() {
                isLoading = true;
              });
              await getLongLat(showDialog: true);
              print('lat: $lat, long: $long');

              await ref.read(userNotfierProvider.notifier).updateProfile(
                      location: Input$LocationInputType(
                    longitude: long.toString(),
                    latitude: lat.toString(),
                    locationName: locationController.text,
                  ));
              ref.read(userNotfierProvider).whenOrNull(
                    error: (e, _) =>
                        context.alert('An error occured while updating'),
                    data: (_) {
                      setState(() {
                        isLoading = false;
                      });
                      Navigator.pop(context);
                      HelperFunction.context = context;
                      HelperFunction.showToast(message: 'Location updated!');
                    },
                  );
            },
            buttonTitle: 'Update',
            // width: MediaQuery.sizeOf(context).width,
          ),
        ),
      ),
    );
  }

  Widget _buildAuthTextField(
    BuildContext context, {
    required String label,
    required String hintText,
    void Function(String)? onChanged,
    TextEditingController? controller,
  }) {
    return PreluraAuthTextField(
      label: label,
      labelStyle: _labelStyle(context),
      hintText: hintText,
      hintStyle: _hintStyle(context),
      onChanged: onChanged,
      controller: controller,
    );
  }

  TextStyle? _labelStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14);
  }

  TextStyle? _hintStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 18);
  }
}

class PlaceAutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;

  PlaceAutocompleteResponse({this.status, this.predictions});

  factory PlaceAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutocompleteResponse(
      status: json['status'] as String?,
      predictions: json['predictions'] != null
          ? json['predictions']
              .map<AutocompletePrediction>(
                  (json) => AutocompletePrediction.fromJson(json))
              .toList()
          : null,
    );
  }

  static PlaceAutocompleteResponse parseAutocompleteResult(
      String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();

    return PlaceAutocompleteResponse.fromJson(parsed);
  }
}

class AutocompletePrediction {
  /// [description] contains the human-readable name for the returned result. For establishment results, this is usually
  /// the business name.
  final String? description;

  /// [structuredFormatting] provides pre-formatted text that can be shown in your autocomplete results
  final StructuredFormatting? structuredFormatting;

  /// [placeId] is a textual identifier that uniquely identifies a place. To retrieve information about the place,
  /// pass this identifier in the placeId field of a Places API request. For more information about place IDs.
  final String? placeId;

  /// [reference] contains reference.
  final String? reference;

  AutocompletePrediction({
    this.description,
    this.structuredFormatting,
    this.placeId,
    this.reference,
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) {
    return AutocompletePrediction(
      description: json['description'] as String?,
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] != null
          ? StructuredFormatting.fromJson(json['structured_formatting'])
          : null,
    );
  }
}

class StructuredFormatting {
  /// [mainText] contains the main text of a prediction, usually the name of the place.
  final String? mainText;

  /// [secondaryText] contains the secondary text of a prediction, usually the location of the place.
  final String? secondaryText;

  StructuredFormatting({this.mainText, this.secondaryText});

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) {
    return StructuredFormatting(
      mainText: json['main_text'] as String?,
      secondaryText: json['secondary_text'] as String?,
    );
  }
}

class LocationListTile extends StatelessWidget {
  const LocationListTile({
    Key? key,
    required this.location,
    required this.press,
  }) : super(key: key);

  final String location;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: press,
          horizontalTitleGap: 0,
          leading: SvgPicture.asset(
            "assets/icons/location_pin.svg",
            colorFilter: ColorFilter.mode(
              Theme.of(context).primaryColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            location,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}

Future<void> _showEnableLocationPopup(BuildContext context,
    {required String title,
    required String description,
    required Future<bool> Function() positiveCallback}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return PreluraConfirmationPopUp(
        popupTitle: title,
        popupDescription: description,
        onPressedYes: () async {
          //Calls to settings are not supported on the web
          if (kIsWeb) return;
          final res = await positiveCallback();
          if (res && context.mounted) {
            Navigator.pop(context);
          }
        },
        onPressedNo: () {
          Navigator.pop(context, false);
        },
      );
    },
  );
}
