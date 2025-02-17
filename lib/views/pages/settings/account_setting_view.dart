import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/widget/custom_location_field.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/date_picker.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../res/colors.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/app_checkbox.dart';
import 'profile_setting_view.dart';

enum Gender { Male, Female }

@RoutePage()
class AccountSettingScreen extends ConsumerStatefulWidget {
  const AccountSettingScreen({super.key});

  @override
  ConsumerState<AccountSettingScreen> createState() =>
      _AccountSettingScreenState();
}

class _AccountSettingScreenState extends ConsumerState<AccountSettingScreen> {
  DateTime? selectedDate;
  UserModel? userInfo;
  TextEditingController get fullName =>
      TextEditingController(text: userInfo?.fullName);
  String? selectedGender;
  final String? apiKey = dotenv.env["LOCATION_API_KEY"];
  List<AutocompletePrediction> placePredictions = [];
  late TextEditingController locationController =
      TextEditingController(text: userInfo?.location?.locationName);
  late TextEditingController name =
      TextEditingController(text: userInfo?.fullName);
  late TextEditingController username =
      TextEditingController(text: userInfo?.username);
  late TextEditingController email =
      TextEditingController(text: userInfo?.email);
  late TextEditingController shippingAddress =
      TextEditingController(text: userInfo?.shippingAddress?.address);
  late TextEditingController dob = TextEditingController();
  final bio = TextEditingController();
  final int MaxDescription = 500;
  Gender? gender;
  dynamic selectedSize;
  bool isExpanded = false;
  bool isStyleExpanded = false;
  final ExpansionTileController controller = ExpansionTileController();
  final ExpansionTileController styleController = ExpansionTileController();
  ShippingAddress? shippingAddressModel;

  @override
  void initState() {
    getLongLat(showDialog: true);
    userInfo = ref.read(userProvider).valueOrNull;
    gender = userInfo?.gender?.toLowerCase() == "male"
        ? Gender.Male
        : userInfo?.gender?.toLowerCase() == "female"
            ? Gender.Female
            : null;
    bio.text = ref.read(userProvider).valueOrNull?.bio ?? "";
    selectedDate = ref.read(userProvider).valueOrNull?.dob;
    if (selectedDate != null) {
      dob.text = DateFormat("dd-MM-y").format(selectedDate!);
    }
    shippingAddressModel = userInfo?.shippingAddress;
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
    shippingAddress.dispose();
    super.dispose();
  }

  Future<ShippingAddress> getPlaceDetails(String placeId) async {
    final response = await http.get(Uri.parse(
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey'));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body)['result'];
      List<dynamic> addressComponents = result['address_components'];

      String city = '';
      String country = '';
      String postcode = '';

      for (var component in addressComponents) {
        log("component : $component");
        if (component['types'].contains('locality') ||
            component["types"].contains("administrative_area_level_3") ||
            component["types"].contains("postal_town")) {
          city = component['long_name'];
        } else if (component['types'].contains('country')) {
          country = component['long_name'];
        } else if (component['types'].contains('postal_code') ||
            component['types'].contains('zip_code')) {
          postcode = component['long_name'];
        }
      }
      log("${'city:  $city, country: $country, postcode: $postcode'}");
      if (postcode.isEmpty) {
        context.alert("No postal code found, please choose another address.");
      }
      return ShippingAddress(
          city: city,
          address: shippingAddress.text,
          country: country,
          postcode: postcode);
    } else {
      throw Exception('Failed to load place details');
    }
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
    final user = ref.watch(userProvider).valueOrNull;
    bool modifiedEmail =
        email.text.trim() != ref.read(userProvider).valueOrNull?.email;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Account Settings',
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
      ),
      body: SingleChildScrollView(
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
            GestureDetector(
              onTap: () {
                showPreluraDatePicker(
                  context: context,
                  onSelect: (date) {
                    if (date == null) return;
                    selectedDate = date;
                    dob.text =
                        DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY)
                            .format(date);
                  },
                );
              },
              child: buildAuthTextField(
                context,
                label: 'Date of Birth',
                hintText: '2024-11-16',
                controller: dob,
                keyboardType: TextInputType.datetime,
                enabled: false,
              ),
            ),
            addVerticalSpacing(16),
            buildAuthTextField(
              context,
              label: 'Email',
              hintText: 'e.g. app@prelura.com',
              controller: email,
            ),
            addVerticalSpacing(16),
            buildAuthTextField(
              context,
              label: 'Phone Number',
              hintText: ' +44 123456789',
              // controller: email,
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

            CustomLocationField(
              locationController: locationController,
              onDescriptionSelected: (value) {},
            ),
            addVerticalSpacing(16),

            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: context.isDarkMode
                      ? PreluraColors.white.withOpacity(0.5)
                      : Theme.of(context).dividerColor,
                ),
              ),
              child: ExpansionTile(
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Gender",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                          ),
                    ),
                    TextSpan(
                      text: " :  ${gender?.name ?? ""}" ?? " ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            color: PreluraColors.grey,
                          ),
                    )
                  ])),
                  tilePadding:
                      EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                  // childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                  minTileHeight: 30,
                  // onExpansionChanged: (expanded) => setState(() => expandedCategories = expanded),
                  controller: controller,
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 300),
                  ),
                  children: Gender.values
                      .map(
                        (x) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: PreluraCheckBox(
                              sideText: " ",
                              sideTextColor: PreluraColors.grey,
                              isChecked: gender?.name == x.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: getDefaultSize(),
                                  ),
                              onChanged: (value) {
                                gender = x;
                                setState(() {});
                                controller.collapse();
                              },
                              title: x.name),
                        ),
                      )
                      .toList()),
            ),
            addVerticalSpacing(16),

            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: context.isDarkMode
                      ? PreluraColors.white.withOpacity(0.5)
                      : Theme.of(context).dividerColor,
                ),
              ),
              child: ExpansionTile(
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Preferred Size",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                          ),
                    ),
                    TextSpan(
                      text: " :  ${selectedSize?.name ?? ""}" ?? "",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            color: PreluraColors.grey,
                          ),
                    )
                  ])),
                  tilePadding:
                      EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                  // childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                  minTileHeight: 30,
                  // onExpansionChanged: (expanded) => setState(() => expandedCategories = expanded),
                  controller: styleController,
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 300),
                  ),
                  children: ["X"].map((x) {
                    // if (x == Enum$SizeEnum.$unknown) return Container();
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: PreluraCheckBox(
                          sideText: " ",
                          sideTextColor: PreluraColors.grey,
                          isChecked: gender?.name == x,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: getDefaultSize(),
                                  ),
                          onChanged: (value) {
                            selectedSize = x;
                            setState(() {});
                            styleController.collapse();
                          },
                          title: x.replaceAll("_", " ")),
                    );
                  }).toList()),
            ),
            16.verticalSpacing,
            CustomLocationField(
              title: "Shipping Address",
              locationController: shippingAddress,
              onDescriptionSelected: (value) {
                final places = getPlaceDetails(value!);
                log(places.toString());
                setState(() {
                  places.then((value) {
                    shippingAddressModel = value;
                  });
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 106,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: PreluraButtonWithLoader(
          showLoadingIndicator: isLoading,
          onPressed: () async {
            if (shippingAddressModel != null) {
              if (shippingAddressModel!.postcode.isEmpty) {
                context.alert("Please change your shipping address");
                return;
              }
            }
            try {
              // email: (email.text!= user?.email)  ? email.text : null,
              setState(() {
                isLoading = true;
              });

              log("::::From dob:: ${selectedDate != user?.dob}");
              log("::::From dob:: $selectedDate");
              await ref.read(userNotfierProvider.notifier).updateProfile(
                    displayName:
                        (name.text != user?.displayName) ? name.text : null,
                    gender: gender?.name,
                    dob: selectedDate != user?.dob
                        ? DateFormat("y-MM-dd").format(selectedDate!)
                        : null,
                    location:
                        locationController.text != user?.location?.locationName
                            ? Input$LocationInputType.fromJson({
                                "locationName": locationController.text,
                                "latitude": lat.toString(),
                                "longitude": long.toString(),
                              })
                            : null,
                    username:
                        username.text != user?.username ? username.text : null,
                    shippingAddress: shippingAddressModel != null
                        ? Input$ShippingAddressInputType(
                            address: shippingAddressModel!.address,
                            city: shippingAddressModel!.city,
                            country: shippingAddressModel!.country,
                            postcode: shippingAddressModel!.postcode)
                        : null,
                  );
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
              // context.alert(
              //   'Profile updated successfully',
              // );
            } catch (e) {
              log(":::Error from profile update::::: ${e.toString()}");
              context.alert(
                'An error occurred. Please try again.',
              );
            }
            setState(() {
              isLoading = false;
            });
            // try {
            //   if (locationController.text.isEmpty) {
            //     context.alert('Location cannot be empty');
            //     return;
            //   }
            //   setState(() => isLoading = true);

            //   if ((long == 0.0 && lat == 0.0)) {
            //     await getLongLat(showDialog: true);
            //   }

            //   if (long == 0.0 || lat == 0.0) {
            //     throw Exception('Invalid location coordinates');
            //   }

            //   if (modifiedEmail) {
            //     await ref
            //         .read(userNotfierProvider.notifier)
            //         .changeEmail(email.text);
            //     ref.read(userNotfierProvider).whenOrNull(
            //           error: (e, _) => context.alert(e.toString()),
            //           data: (_) => context
            //               .pushRoute(VerifyEmailRoute(email: email.text)),
            //         );
            //     setState(() => isLoading = false);
            //     return;
            //   }

            //   await ref.read(userNotfierProvider.notifier).updateProfile(
            //       location: Input$LocationInputType(
            //         longitude: long.toString(),
            //         latitude: lat.toString(),
            //         locationName: locationController.text,
            //       ),
            //       firstName: name.text.isEmpty ? null : name.text.split(' ')[0],
            //       lastName: name.text.isEmpty ? null : name.text.split(' ')[1],
            //       // username: username.text == ref.read(userProvider).valueOrNull?.username ? null : username.text,
            //       bio: bio.text.isEmpty
            //           ? ref.read(userProvider).valueOrNull?.username
            //           : bio.text);

            //   ref.read(userNotfierProvider).whenOrNull(
            //     error: (e, _) {
            //       setState(() {
            //         isLoading = false;
            //       });
            //       return context.alert('An error occurred: $e');
            //     },
            //     data: (_) {
            //       setState(() {
            //         isLoading = false;
            //       });
            //       if (context.mounted) {
            //         Navigator.pop(context);
            //         HelperFunction.context = context;
            //         HelperFunction.showToast(message: 'Profile updated!');
            //       }
            //     },
            //   );
            // } catch (e, stackTrace) {
            //   setState(() {
            //     isLoading = false;
            //   });
            //   log('Update failed: $e', stackTrace: stackTrace);

            //   context.alert('Failed to update profile: $e');
            // }
          },

          buttonTitle: 'Update',
          // width: MediaQuery.sizeOf(context).width,
        ),
      ),

      // body: Container(
      //   child: ListView(
      //     children: [
      //       buildSectionHeader('Email address', user?.email ?? '', false, () {
      //         // Change email logic
      //       }, context),
      //       const SizedBox(height: 16),
      //       buildSectionHeader('Phone', user?.phone?.number, false, () {
      //         // Change phone number logic
      //       }, context, placeholder: 'Add Phone number'),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
      //         child: Text(
      //           'Your phone number will only be used to help you log in. It won’t be made public or used for marketing purposes.',
      //           style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
      //         ),
      //       ),
      //       buildEditableField(context, 'Full Name', user?.fullName ?? '', (value) {}, controller: fullName),
      //       const SizedBox(height: 20),
      //       buildDropdownField(context, 'Gender', (selectedGender ?? user?.gender), ['Male', 'Female', 'Other'], (value) {
      //         setState(() => selectedGender = value);
      //         // ref
      //         //     .read(userProvider.notifier)
      //         //     .update((state) => state.copyWith(gender: value));
      //       }),
      //       const SizedBox(height: 20),
      //       buildEditableField(
      //           context,
      //           'Birthday',
      //           (selectedDate ?? user?.dob) != null
      //               ? DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY).format((selectedDate ?? user!.dob!)) //user.birthday!.toString()
      //               : 'mm/dd/yyyy', (value) {
      //         // Implement date picker here
      //       }, onTap: () async {
      //         log('Tapped');
      //         final date = await showDatePicker(
      //           context: context,
      //           firstDate: DateTime(1900),
      //           lastDate: DateTime(2025),
      //         );

      //         if (date == null) return;
      //         setState(() => selectedDate = date);
      //       }),
      //       // const SizedBox(height: 16),
      //       // buildSectionHeader('Email address', "Email Address", false, () {
      //       //   // Change email logic
      //       // }, context, isVerified: false),
      //       const SizedBox(height: 16),
      //       buildSectionHeader('', 'Facebook', false, () {
      //         // Facebook linking logic
      //       }, context, isLink: true),
      //       buildSectionHeader('', 'Google', false, () {}, context, isLink: true),
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Text(
      //           'Link to your other accounts to become a trusted, verified member.',
      //           style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  Widget buildSectionHeader(
    String title,
    String? value,
    bool verified,
    VoidCallback onTap,
    context, {
    bool isLink = false,
    bool isVerified = false,
    String? placeholder,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(value ?? placeholder ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: getDefaultSize(),
                    )),
            addVerticalSpacing(4),
            if (verified && !isLink) ...[
              Row(
                children: [
                  Text("verified",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: getDefaultSize(),
                          )),
                  addHorizontalSpacing(10),
                  const Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ]
          ]),
          AppButton(
            width: 80,
            onTap: onTap,
            isDisabled: isVerified,
            text: isLink
                ? (verified ? 'Linked' : 'Link')
                : isVerified
                    ? "verified"
                    : value == null
                        ? 'Add'
                        : 'Change',
            textColor:
                isLink ? (verified ? Colors.grey : Colors.blue) : Colors.blue,
            bgColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ],
      ),
    );
  }

  Widget buildEditableField(
    BuildContext context,
    String label,
    String initialValue,
    ValueChanged<String> onChanged, {
    VoidCallback? onTap,
    TextEditingController? controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          addVerticalSpacing(4),
          PreluraAuthTextField(
            hintText: initialValue,
            controller: controller,
            onChanged: onChanged,
            onTap: onTap,
            enabled: onTap == null,
          ),
        ],
      ),
    );
  }

  Widget buildDropdownField(BuildContext context, String label, String? value,
      List<String> options, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          DropdownButton<String>(
            value: value,
            isExpanded: true,
            onChanged: onChanged,
            items: options.map((String option) {
              return DropdownMenuItem(
                key: Key(label),
                value: option,
                child: Text(option),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
