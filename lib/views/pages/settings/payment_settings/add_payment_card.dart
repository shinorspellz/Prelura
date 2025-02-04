import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:prelura_app/controller/payment_method_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/ui_constants.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';

@RoutePage()
class AddPaymentCard extends ConsumerStatefulWidget {
  const AddPaymentCard({super.key});

  @override
  ConsumerState<AddPaymentCard> createState() => _AddPaymentCardState();
}

class _AddPaymentCardState extends ConsumerState<AddPaymentCard> {
  @override
  void initState() {
    controller.addListener(update);
    super.initState();
  }

  void update() => setState(() {});

  @override
  void dispose() {
    controller.removeListener(update);
    controller.dispose();
    super.dispose();
  }

  //!================ Variables ================\\
  final controller = CardEditController();
  var stripe = Stripe.instance;

//!================ Booleans ================\\
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              children: [
                CardField(
                  countryCode: 'UK',
                  controller: controller,
                  decoration: UIConstants.instance.inputDecoration(context),
                  enablePostalCode: true,
                  numberHintText: "0000-0000-0000-0000",
                  postalCodeHintText: "Postal code",
                  onCardChanged: (details) {
                    log("Card details changed", name: "DEBUG");
                    if (details != null) {
                      log("Raw details: $details", name: "DEBUG");
                      log("Card Number: ${details.number}",
                          name: "Card number");
                      log("CVC: ${details.cvc}", name: "CVC");
                      log("Expiry Month: ${details.expiryMonth}",
                          name: "Expiry Month");
                      log("Expiry Year: ${details.expiryYear}",
                          name: "Expiry Year");
                    }
                  },
                ),
                40.toHeight,
                PreluraButtonWithLoader(
                  showLoadingIndicator:
                      ref.watch(paymentMethodNotifierProvider).isLoading,
                  onPressed: controller.details.complete ? saveCard : null,
                  buttonTitle: "Save",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //!================== Functions =================\\

  Future<void> saveCard() async {
    try {
      final paymentMethod = await stripe.createPaymentMethod(
        params: PaymentMethodParams.card(
          paymentMethodData: PaymentMethodData(),
        ),
      );

      // log(name: "Card Details", "${controller.details}");
      log("Payment Method: ${paymentMethod.card}", name: "Stripe");
      log("Payment Method ID: ${paymentMethod.id}", name: "Stripe");

      // Send Payment Method ID to backend to attach to the customer
      ref
          .read(paymentMethodNotifierProvider.notifier)
          .addPaymentMethod(paymentMethodId: paymentMethod.id);

      ref.read(paymentMethodNotifierProvider).whenOrNull(
        error: (e, _) {
          return context.alert('An error occurred: $e');
        },
        data: (_) async {
          HelperFunction.context = context;
          HelperFunction.showToast(message: "Payment Method saved");

          prefs.setBool("paymentMethodIsAdded", true);
          await Future.delayed(const Duration(seconds: 2));

          if (mounted) {
            context.router.popForced();
            context.router.popForced();
            context.router.push(PaymentSettings());
          }
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
    } catch (e, stackTrace) {
      log(
        "Error adding payment method: $e",
        name: "BACKEND",
        stackTrace: stackTrace,
      );
    }
  }
}
