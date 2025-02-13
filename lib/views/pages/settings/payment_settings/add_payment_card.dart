// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:prelura_app/controller/payment_method_controller.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:http/http.dart' as http;
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/input_formatters/card_number_text_input_formatter.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';

import '../../../../res/colors.dart';
import '../widget/custom_location_field.dart';

@RoutePage()
class AddPaymentCard extends ConsumerStatefulWidget {
  const AddPaymentCard({super.key});

  @override
  ConsumerState<AddPaymentCard> createState() => _AddPaymentCardState();
}

class _AddPaymentCardState extends ConsumerState<AddPaymentCard> {
  final formKey = GlobalKey<FormState>();
  final String? apiKey = dotenv.env["LOCATION_API_KEY"];
  String? cardError = "";
  String? dateError = "";
  String? cvcError = "";
  String? postCodeError = "";
  String? addressError = "";
  TextEditingController addressController = TextEditingController();
  Address billingAddress = Address(
    line1: null,
    line2: null,
    city: null,
    state: null,
    postalCode: "",
    country: null,
  );
  @override
  void initState() {
    super.initState();
    userInfo = ref.read(userProvider).valueOrNull;

    userEmail = userInfo?.email ?? "";
    userAddress = userInfo?.location?.locationName ?? "";
    // userPostalCode = userInfo?. ?? "";
    userPhoneNumber =
        "${userInfo?.phone?.countryCode}${userInfo?.phone?.number}";
    log("$userEmail, $userAddress, $userPhoneNumber", name: "User Details");
  }

  Future<Address> getPlaceDetails(String placeId) async {
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
            component["types"].contains("administrative_area_level_3")) {
          city = component['long_name'];
        } else if (component['types'].contains('country')) {
          country = component['short_name'];
        } else if (component['types'].contains('postal_code') ||
            component['types'].contains('zip_code')) {
          postcode = component['long_name'];
        }
      }
      log("${'city:  $city, country: $country, postcode: $postcode'}");
      if (postcode.isEmpty) {
        context.alert("No postal code found, please choose another address.");
      }
      return Address(
          city: city,
          state: "",
          line1: addressController.text,
          line2: null,
          country: country,
          postalCode: postcode);
    } else {
      throw Exception('Failed to load place details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: "Add a payment card",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card Number",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                ),
                10.toHeight,
                PreluraAuthTextField(
                  controller: cardNumberEC,
                  focusNode: cardNumberFN,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.none,
                  hintText: "0000-0000-0000-0000",
                  onSaved: (value) => cardNumberEC.text = value ?? "",
                  onChanged: (value) {
                    cardNumberOnChanged(value);
                    ;
                  },
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      WidgetsFlutterBinding.ensureInitialized()
                          .addPostFrameCallback((_) {
                        setState(() {
                          cardError = "Card number is required";
                        });
                      });

                      return "Card number is required";
                    }
                    return null;
                  },
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: cardBrandIcon != null
                        ? SvgPicture.asset(cardBrandIcon!)
                        : SizedBox.shrink(),
                  ),
                  formatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberTextInputFormatter(),
                  ],
                ),
                24.toHeight,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                ),
                          ),
                          10.toHeight,
                          PreluraAuthTextField(
                            controller: dateEC,
                            focusNode: dateFN,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.none,
                            hintText: "MM/YYYY",
                            onSaved: (value) => dateEC.text = value ?? "",
                            onChanged: (value) {
                              dateOnChanged(value);
                              ;
                            },
                            formatter: [],
                            validator: (p0) {
                              if (p0 == null || p0.isEmpty) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    dateError = "date is required";
                                  });
                                });
                                return "Date is required";
                              }

                              String unformattedText =
                                  p0.replaceAll(RegExp(r'[^0-9]'), '');

                              if (unformattedText.length != 4) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    dateError = "Invalid date format";
                                  });
                                });
                                return "Invalid date format";
                              }

                              int? month =
                                  int.tryParse(unformattedText.substring(0, 2));
                              int? year =
                                  int.tryParse(unformattedText.substring(2));

                              if (month == null ||
                                  year == null ||
                                  month < 1 ||
                                  month > 12) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    dateError = "Invalid month";
                                  });
                                });
                                return "Invalid month";
                              }

                              int currentYear = DateTime.now().year % 100;
                              int currentMonth = DateTime.now().month;

                              if (year < currentYear ||
                                  (year == currentYear &&
                                      month < currentMonth)) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    dateError = "Card has expired";
                                  });
                                });
                                return "Card has expired";
                              }

                              return null; // Validation passed
                            },
                          ),
                        ],
                      ),
                    ),
                    10.toWidth,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                ),
                          ),
                          10.toHeight,
                          PreluraAuthTextField(
                            controller: cvvEC,
                            focusNode: cvvFN,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.none,
                            hintText: "000",
                            onSaved: (value) => cvvEC.text = value ?? "",
                            onChanged: (value) {
                              cvvOnChanged(value);
                              ;
                            },
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    cvcError = "CVV is required";
                                  });
                                });
                                return "CVV is required";
                              }
                              if (p0.length < 3) {
                                WidgetsFlutterBinding.ensureInitialized()
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    cvcError = "Invalid CVV";
                                  });
                                });
                                return "Invalid CVV";
                              }
                              return null;
                            },
                            formatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                24.toHeight,
                Text(
                  "Billing Address",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                ),
                10.toHeight,
                CustomLocationField(
                  showHeader: false,
                  locationController: addressController,
                  onChanged: () {
                    postalCodeEC.clear();
                  },
                  onDescriptionSelected: (value) {
                    final places = getPlaceDetails(value!);
                    log(places.toString());
                    places.then((value) {
                      if (mounted) {
                        setState(() {
                          billingAddress = value;
                          postalCodeEC.text = value
                              .postalCode!; // Update the postal code field manually
                        });
                      }
                    });
                  },
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      WidgetsFlutterBinding.ensureInitialized()
                          .addPostFrameCallback((_) {
                        setState(() {
                          postCodeError = "Address is required";
                        });
                      });
                      return "Address is required";
                    }

                    return null;
                  },
                ),
                24.toHeight,
                Text(
                  "Postal Code",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                ),
                10.toHeight,
                PreluraAuthTextField(
                  controller: postalCodeEC,
                  // enabled: false,
                  focusNode: postalCodeFN,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  textCapitalization: TextCapitalization.none,
                  hintText: "AA9A 9AA",
                  onSaved: (value) => postalCodeEC.text = value ?? "",
                  onChanged: (value) {
                    postalCodeOnChanged(value);
                    ;
                  },
                  formatter: [
                    FilteringTextInputFormatter.allow(RegExp(r"[A-Za-z0-9 ]")),
                  ],
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      WidgetsFlutterBinding.ensureInitialized()
                          .addPostFrameCallback((_) {
                        setState(() {
                          postCodeError = "Postal code is required";
                        });
                      });
                      return "Postal Code is required";
                    }

                    return null;
                  },
                ),
                40.toHeight,
                PreluraButtonWithLoader(
                  showLoadingIndicator:
                      ref.watch(paymentMethodNotifierProvider).isLoading,
                  onPressed: () async {
                    final isValid = formKey.currentState?.validate() ?? false;
                    formKey.currentState?.save();
                    WidgetsFlutterBinding.ensureInitialized()
                        .addPostFrameCallback((_) {
                      setState(() {});
                    });

                    await Future.delayed(Duration(milliseconds: 100));

                    log(cardError.toString());
                    log(dateError.toString());
                    log(cvcError.toString());
                    log(postCodeError.toString());
                    if (cardError == null &&
                        dateError == null &&
                        cvcError == null &&
                        postCodeError == null &&
                        billingAddress.postalCode!.isNotEmpty &&
                        billingAddress.line1!.isNotEmpty) {
                      log("form is $isValid");
                      if (isValid) {
                        saveCard();
                      }
                    }
                  },
                  buttonTitle: "Save",
                  buttonColor: PreluraColors.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //!================ Model ================\\
  UserModel? userInfo;

  //!================ Variables ================\\
  String? cardBrandIcon;
  DateTime? lastSelectedDate;
  var stripe = Stripe.instance;
  CardDetails _card = CardDetails();

  //!================ Keys ================\\

//!================ Controllers ================\\
  var scrollController = ScrollController();
  var fullNameEC = TextEditingController();
  var cardNumberEC = TextEditingController();
  var dateEC = TextEditingController();
  var cvvEC = TextEditingController();
  var postalCodeEC = TextEditingController();

//!================ Focus Nodes ================\\
  var fullNameFN = FocusNode();
  var cardNumberFN = FocusNode();
  var dateFN = FocusNode();
  var cvvFN = FocusNode();
  var postalCodeFN = FocusNode();

  //!================== Functions =================\\
  onFieldSubmitted(value) {
    saveCard();
  }

  void cardNumberOnChanged(String value) {
    // Remove non-digit characters to get the raw card number
    String unformattedCardNumber = value.replaceAll(RegExp(r'\D'), '');

    // Update the card model with the unformatted number
    setState(() {
      _card = _card.copyWith(number: unformattedCardNumber);
    });

    // Detect the card brand
    String? detectedBrand = detectCardBrand(unformattedCardNumber);

    // Log the unformatted text and detected brand
    log(_card.number.toString(), name: "Stripe Card Number");
    log(unformattedCardNumber, name: "Unformatted Card Number");
    log(detectedBrand ?? 'Unknown', name: "Detected Card Brand");

    // Update the suffix icon
    setState(() {
      cardError = null;
      cardBrandIcon = detectedBrand;
    });
  }

  String? detectCardBrand(String cardNumber) {
    if (cardNumber.startsWith(RegExp(r'5[1-5]'))) {
      return PreluraIcons.mastercardIcon;
    } else if (cardNumber.startsWith(RegExp(r'4'))) {
      return PreluraIcons.visaIcon;
    }
    return null;
  }

  dateOnChanged(String value) {
    String unformattedText = value.replaceAll(
        RegExp(r'[^0-9]'), ''); // Remove non-numeric characters

    if (unformattedText.isNotEmpty && unformattedText[0] != '0') {
      unformattedText =
          '0$unformattedText'; // Prepend '0' if first number is not '0'
    }

    if (unformattedText.length > 4) {
      unformattedText =
          unformattedText.substring(0, 4); // Ensure max length is 4 digits
    }

    String formattedText = unformattedText;
    if (unformattedText.length > 2) {
      formattedText =
          '${unformattedText.substring(0, 2)}/${unformattedText.substring(2)}';
    }

    dateEC.text = formattedText; // Update the text field with formatted value
    dateEC.selection =
        TextSelection.fromPosition(TextPosition(offset: formattedText.length));

    int? month = unformattedText.length >= 2
        ? int.tryParse(unformattedText.substring(0, 2))
        : null;
    int? year = unformattedText.length == 4
        ? int.tryParse(unformattedText.substring(2))
        : null;

    setState(() {
      dateError = null;
      _card = _card.copyWith(
        expirationMonth: month,
        expirationYear: year,
      );
    });

    log("Unformatted text: $unformattedText",
        name: "Stripe Card Expiration Date");
    log("Expiration Date: ${_card.expirationMonth}/${_card.expirationYear}",
        name: "Stripe Card Expiration Date");
  }

  void cvvOnChanged(String value) {
    setState(() {
      cvcError = null;
      _card = _card.copyWith(cvc: value);
    });
    log(_card.cvc ?? "", name: "Stripe Card CVC");
  }

  void postalCodeOnChanged(String value) {
    log("Postal Code: $value", name: "Postal Code Input");
    postCodeError = null;
    setState(() {});
  }

  String? userEmail;
  String? userPhoneNumber;
  String? userCity;
  String? userCountry;
  String? userAddress;
  String? userState;
  String? userPostalCode;

  Future<void> saveCard() async {
    if (formKey.currentState == null || !formKey.currentState!.validate()) {
      return;
    }

    await Stripe.instance.dangerouslyUpdateCardDetails(_card);

    final billingDetails = BillingDetails(
      email: userEmail,
      phone: userPhoneNumber ?? "",
      address: billingAddress,
    );

    log(billingDetails.toString(), name: "Billing Details");
    log(_card.toString(), name: "Card Details");

    try {
      final paymentMethod = await stripe.createPaymentMethod(
        params: PaymentMethodParams.card(
          paymentMethodData: PaymentMethodData(billingDetails: billingDetails),
        ),
      );

      log("Payment Method: ${paymentMethod.card}", name: "Stripe");
      log("Payment Method ID: ${paymentMethod.id}", name: "Stripe");
      // Send Payment Method ID to backend to attach to the customer
      await ref
          .read(paymentMethodNotifierProvider.notifier)
          .addPaymentMethod(paymentMethodId: paymentMethod.id);

      ref.read(paymentMethodNotifierProvider).whenOrNull(
        error: (e, stackTrace) {
          log(e.toString(), stackTrace: stackTrace);
          return context.alert('An error occurred: $e');
        },
        data: (_) async {
          context.alert("Payment Method saved");

          await ref.refresh(paymentMethodProvider.future).then((value) {
            // context.router.push(PaymentSettings());
            context.router.popForced();
          });
        },
      );
    } on SocketException {
      if (mounted) context.alert("Please connect to the internet");
    } on StripeException catch (e, stackTrace) {
      log(
        "Error creating payment method: $e",
        name: "Stripe",
        stackTrace: stackTrace,
      );
      context.alert(e.error.message ?? "An error occurred");
    } catch (e, stackTrace) {
      context.alert(e.toString());

      log(
        "Error adding payment method: $e",
        name: "BACKEND",
        stackTrace: stackTrace,
      );
    }
  }
}
