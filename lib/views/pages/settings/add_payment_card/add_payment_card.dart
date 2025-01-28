import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/core/utils/input_formatters/card_number_text_input_formatter.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';

@RoutePage()
class AddPaymentCard extends StatefulWidget {
  const AddPaymentCard({super.key});

  @override
  State<AddPaymentCard> createState() => _AddPaymentCardState();
}

class _AddPaymentCardState extends State<AddPaymentCard> {
  //!================ Keys ================\\
  final formKey = GlobalKey<FormState>();

//!================ Controllers ================\\
  var scrollController = ScrollController();
  var fullNameEC = TextEditingController();
  var cardNumberEC = TextEditingController();
  var dateEC = TextEditingController();
  var cvvEC = TextEditingController();

//!================ Focus Nodes ================\\
  var fullNameFN = FocusNode();
  var cardNumberFN = FocusNode();
  var dateFN = FocusNode();
  var cvvFN = FocusNode();

  //!================ Variables ================\\
  // Rx<SvgPicture> cardTextFormFieldPrefixIcon = SvgPicture(null).obs;
  DateTime? lastSelectedDate;

//!================ Booleans ================\\
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    // var colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
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
            padding: const EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full name",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                  ),
                  10.toHeight,
                  PreluraAuthTextField(
                    hintText: "",
                    controller: fullNameEC,
                    focusNode: fullNameFN,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.words,
                    onSaved: (value) => fullNameEC.text = value ?? "",
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Full name is required";
                      }
                      return null;
                    },
                  ),
                  40.toHeight,
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
                      onChanged: (val) {},
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "Card number is required";
                        }
                        return null;
                      },
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SvgPicture.asset(PreluraIcons.masterCardIcon),
                      ),
                      formatter: [
                        FilteringTextInputFormatter.digitsOnly,
                        CardNumberTextInputFormatter(),
                      ]),
                  40.toHeight,
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
                              shouldReadOnly: true,
                              controller: dateEC,
                              focusNode: dateFN,
                              hintText: "DD-MM-YYYY",
                              onFieldTap: () {
                                selectDate(context);
                              },
                              onSaved: (value) => dateEC.text = value ?? "",
                              onChanged: (val) {},
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return "Date is required";
                                }
                                return null;
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
                              textInputAction: TextInputAction.done,
                              textCapitalization: TextCapitalization.none,
                              hintText: "000",
                              onSaved: (value) => cvvEC.text = value ?? "",
                              onChanged: (val) {},
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return "CVV is required";
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
                  40.toHeight,
                  PreluraButtonWithLoader(
                    showLoadingIndicator: isLoading,
                    onPressed: save,
                    buttonTitle: "Save",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //!================== Functions =================\\
  cardNumberOnChanged(String value) {
    if (value.length > 4) {
      // cardTextFormFieldPrefixIcon.value =
      //     SvgPicture.asset(Assets.masterCardSVG);
    }
  }

  selectDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: lastSelectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );
    if (selectedDate != null) {
      lastSelectedDate = selectedDate;
      dateEC.text = DateFormat("dd/MM/yyyy").format(selectedDate);
    }
  }

  //================ Form =================//
  onFieldSubmitted(value) {
    save();
  }

  Future<void> save() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      if (fullNameEC.text.isEmpty) {
        return;
      } else if (cardNumberEC.text.isEmpty) {
        return;
      } else if (dateEC.text.isEmpty) {
        return;
      } else if (cvvEC.text.isEmpty) {
        return;
      }
      setState(() {
        isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        isLoading = false;
      });
    }
  }
}
