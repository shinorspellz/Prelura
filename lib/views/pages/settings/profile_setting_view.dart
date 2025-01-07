import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/user/user_controller.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/confirmation_dialog.dart';
import '../../widgets/places_autocomplete_field.dart';

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
  final String? apiKey = dotenv.env["LOCATION_API_KEY"];
  List<AutocompletePrediction> placePredictions = [];
  late TextEditingController locationController = TextEditingController(
      text: ref.read(userProvider).valueOrNull?.location?.locationName);
  late TextEditingController name =
      TextEditingController(text: ref.read(userProvider).valueOrNull?.fullName);
  late TextEditingController username =
      TextEditingController(text: ref.read(userProvider).valueOrNull?.username);
  late TextEditingController email =
      TextEditingController(text: ref.read(userProvider).valueOrNull?.email);
  final bio = TextEditingController();
  final int MaxDescription = 300;
  @override
  void initState() {
    getLongLat(showDialog: true);
    bio.text = ref.read(userProvider).valueOrNull?.bio ?? "";
    email.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    locationController.dispose();
    bio.dispose();
    name.dispose();
    username.dispose();
    email.dispose();
    super.dispose();
  }

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
      lat = value.latitude;
      long = value.longitude;
      return null;
    }).onError((error, stackTrace) async {
      //print('888^^^0000 $error');
      setState(() {
        isLoading = false;
      });
      if (showDialog) {
        final String newError = error.toString();

        if (newError.contains('denied')) {
          await showEnableLocationPopup(context,
              title: "Permission Access",
              description:
                  "Prelura requires permission for location access to function "
                  "while on this page.",
              positiveCallback: Geolocator.openAppSettings);
        } else if (newError.contains('disabled')) {
          await showEnableLocationPopup(context,
              title: "Location Disabled",
              description:
                  'Prelura requires location access for the proper functioning of '
                  'app. Please enable device location.',
              positiveCallback: Geolocator.openLocationSettings);
        }
      }

      // return HelperFunction.showToast(message: error.toString() as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = ref.watch(obscureTextProvider);

    bool modifiedEmail =
        email.text.trim() != ref.read(userProvider).valueOrNull?.email;

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
              buildAuthTextField(
                context,
                label: 'Name',
                hintText: 'e.g. Prelura App',
                controller: name,
              ),
              addVerticalSpacing(16),
              buildAuthTextField(
                context,
                label: 'Username',
                hintText: 'e.g. prelura_app',
                controller: username,
                enabled: false,
              ),
              addVerticalSpacing(16),
              Column(children: [
                buildAuthTextField(
                  context,
                  label: 'About',
                  hintText: 'About me ...',
                  controller: bio,
                  enabled: true,
                  minLines: 5,
                  maxLines: null,
                  isDescription: true,
                  maxLength: MaxDescription,
                  onChanged: (value) {
                    setState(
                        () {}); // Rebuild the widget to show updated counter
                  },
                  textInputAction: TextInputAction.newline,
                  // formatter: FilteringTextInputFormatter.allow(
                  //     RegExp(r'[^\n]+')),
                  keyboardType: TextInputType.multiline,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "${MaxDescription - bio.text.length} characters remaining",
                    maxLines: 1,
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ]),
              addVerticalSpacing(16),
              buildAuthTextField(
                context,
                label: 'Email',
                hintText: 'e.g. app@prelura.com',
                controller: email,
              ),
              addVerticalSpacing(16),
              // PreluraAuthTextField(
              //   label: 'Password',
              //   labelStyle: _labelStyle(context),
              //   hintText: '*********',
              //   hintStyle: _hintStyle(context),
              //   obscureText: obscureText,
              //   onChanged: (value) {},
              //   isPassword: true,
              // ),
              // addVerticalSpacing(16),
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

              buildAuthTextField(
                context,
                label: 'Location',
                hintText: 'e.g. Exter, United Kingdom',
                controller: locationController,
                onChanged: (value) {
                  placeAutoComplete(value);
                },
              ),
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
              try {
                if (locationController.text.isEmpty) {
                  context.alert('Location cannot be empty');
                  return;
                }
                setState(() => isLoading = true);

                if ((long == 0.0 && lat == 0.0)) {
                  await getLongLat(showDialog: true);
                }

                if (long == 0.0 || lat == 0.0) {
                  throw Exception('Invalid location coordinates');
                }

                if (modifiedEmail) {
                  await ref
                      .read(userNotfierProvider.notifier)
                      .changeEmail(email.text);
                  ref.read(userNotfierProvider).whenOrNull(
                        error: (e, _) => context.alert(e.toString()),
                        data: (_) => context
                            .pushRoute(VerifyEmailRoute(email: email.text)),
                      );
                  setState(() => isLoading = false);
                  return;
                }

                await ref.read(userNotfierProvider.notifier).updateProfile(
                    location: Input$LocationInputType(
                      longitude: long.toString(),
                      latitude: lat.toString(),
                      locationName: locationController.text,
                    ),
                    firstName:
                        name.text.isEmpty ? null : name.text.split(' ')[0],
                    lastName:
                        name.text.isEmpty ? null : name.text.split(' ')[1],
                    // username: username.text == ref.read(userProvider).valueOrNull?.username ? null : username.text,
                    bio: bio.text.isEmpty
                        ? ref.read(userProvider).valueOrNull?.username
                        : bio.text);

                ref.read(userNotfierProvider).whenOrNull(
                  error: (e, _) {
                    setState(() {
                      isLoading = false;
                    });
                    return context.alert('An error occurred: $e');
                  },
                  data: (_) {
                    setState(() {
                      isLoading = false;
                    });
                    if (context.mounted) {
                      Navigator.pop(context);
                      HelperFunction.context = context;
                      HelperFunction.showToast(message: 'Profile updated!');
                    }
                  },
                );
              } catch (e, stackTrace) {
                setState(() {
                  isLoading = false;
                });
                log('Update failed: $e', stackTrace: stackTrace);

                context.alert('Failed to update profile: $e');
              }
            },

            buttonTitle: 'Update',
            // width: MediaQuery.sizeOf(context).width,
          ),
        ),
      ),
    );
  }
}

Widget buildAuthTextField(
  BuildContext context, {
  required String label,
  required String hintText,
  void Function(String)? onChanged,
  TextEditingController? controller,
  Function(String?)? onSaved,
  Function()? onTap,
  bool enabled = true,
  isDescription = false,
  bool showBorder = true,
  
  int? minLines,
  int? maxLength,
  int? maxLines,
  TextInputAction? textInputAction = TextInputAction.done,
  TextInputType? keyboardType,
}) {
  return PreluraAuthTextField(
    onTap: onTap,
    label: label,
    labelStyle: _labelStyle(context),
    hintText: hintText,
    hintStyle: _hintStyle(context),
    onChanged: onChanged,
    controller: controller,
    enabled: enabled,
    minLines: minLines,
    maxLength: maxLength,
    maxLines: maxLines,
    textInputAction: textInputAction,
    keyboardType: keyboardType,
    showBorder: showBorder,
    isDescription: isDescription,
    onSaved: (value) {
      dismissKeyboard();
    },
  );
}

TextStyle? _labelStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyMedium
      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16);
}

TextStyle? _hintStyle(BuildContext context) {
  return Theme.of(context)
      .textTheme
      .bodyMedium
      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16);
}

class PlaceAutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;

  PlaceAutocompleteResponse({this.status, this.predictions});

  factory PlaceAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutocompleteResponse(
      status: json['status'] as String?,
      predictions: json['predictions']
          ?.map<AutocompletePrediction>(
              (json) => AutocompletePrediction.fromJson(json))
          .toList(),
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
    super.key,
    required this.location,
    required this.press,
  });

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

Future<void> showEnableLocationPopup(BuildContext context,
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
