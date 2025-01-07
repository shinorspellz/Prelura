import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'package:prelura_app/res/utils.dart';
import 'package:sizer/sizer.dart';

import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../../core/router/router.gr.dart';
import '../../../res/colors.dart';
import '../../../res/helper_function.dart';
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
  TextEditingController get fullName =>
      TextEditingController(text: ref.read(userProvider).valueOrNull?.fullName);
  String? selectedGender;
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
  late TextEditingController dob = TextEditingController(
      text: ref.read(userProvider).valueOrNull?.dob.toString());

  final bio = TextEditingController();
  final int MaxDescription = 300;
  Gender? gender = null;
  Enum$SizeEnum? selectedSize;
  bool isExpanded = false;
  bool isStyleExpanded = false;
  final ExpansionTileController controller = ExpansionTileController();
  final ExpansionTileController styleController = ExpansionTileController();

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
    final user = ref.watch(userProvider).valueOrNull;
    bool modifiedEmail =
        email.text.trim() != ref.read(userProvider).valueOrNull?.email;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Account settings',
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        trailingIcon: [
          TextButton(
            onPressed: () {
              // final updatedUser = ref.read(userProvider);
              // Save functionality
            },
            child: const Text('Save', style: TextStyle(color: Colors.blue)),
          ),
        ],
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
            // buildAuthTextField(context,
            //     label: 'Date of Birth', hintText: '2024-11-16',
            //     // controller: email,
            //     onTap: () async {
            //   DateTime? pickedDate = await showDatePicker(
            //     context: context,
            //     initialDate: DateTime.now(),
            //     firstDate: DateTime(1900),
            //     lastDate: DateTime(2101),
            //   );
            // }, keyboardType: TextInputType.datetime),
            GestureDetector(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  setState(() {
                    dob.text = formattedDate;
                  });
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: context.isDarkMode
                        ? PreluraColors.white.withOpacity(0.5)
                        : Theme.of(context).dividerColor,
                  ),
                ),
                child: buildAuthTextField(
                  context,
                  showBorder: false,
                  enabled: false,
                  label: 'Date of Birth',
                  hintText:
                      '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                  controller: dob,
                ),
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
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: " :  ${gender?.name == null ? "" : gender?.name}" ??
                          " ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            fontWeight: FontWeight.w400,
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
                                    fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text:
                          " :  ${selectedSize?.name == null ? "" : selectedSize?.name}" ??
                              "",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            fontWeight: FontWeight.w400,
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
                  children: Enum$SizeEnum.values.map((x) {
                    if (x == Enum$SizeEnum.$unknown) return Container();
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: PreluraCheckBox(
                          sideText: " ",
                          sideTextColor: PreluraColors.grey,
                          isChecked: gender?.name == x.name,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: getDefaultSize(),
                                    fontWeight: FontWeight.w600,
                                  ),
                          onChanged: (value) {
                            selectedSize = x;
                            setState(() {});
                            styleController.collapse();
                          },
                          title: x.name.replaceAll("_", " ")),
                    );
                  }).toList()),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 106,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: PreluraButtonWithLoader(
          showLoadingIndicator: isLoading,
          onPressed: () async {
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
