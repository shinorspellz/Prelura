import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/payment_method_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';

@RoutePage()
class PaymentSettings extends ConsumerStatefulWidget {
  const PaymentSettings({super.key});

  @override
  ConsumerState<PaymentSettings> createState() => _PaymentSettingsState();
}

class _PaymentSettingsState extends ConsumerState<PaymentSettings> {
  @override
  void initState() {
    super.initState();
    paymentMethodIsAdded = prefs.getBool("paymentMethodIsAdded") ?? false;

    log("Payment method is added: $paymentMethodIsAdded");
  }

  //!========== Variables ================\\
  var stripe = Stripe.instance;
  //!========== Booleans ================\\
  late bool paymentMethodIsAdded;
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: "Payment settings",
      ),
      body: SafeArea(
        child: () {
          if (paymentMethodIsAdded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Active Payment method",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                  ),
                  20.toHeight,
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: size.width,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          width: 1,
                          color: PreluraColors.primaryColor,
                        ),
                      ),
                    ),
                    child: Text(
                      "Card ending in ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: PreluraColors.lightText,
                          ),
                    ),
                  ),
                  40.toHeight,
                  PreluraButtonWithLoader(
                    buttonTitle: "Delete",
                    buttonColor: PreluraColors.error,
                    showLoadingIndicator: isLoading,
                    onPressed: deletePaymentMethod,
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: PreluraButtonWithLoader(
                  newButtonHeight: 80,
                  buttonTitle: "Add a payment method",
                  onPressed: () async {
                    context.router.push(AddPaymentCard());
                  },
                ),
              ),
            );
          }
        }(),
      ),
    );
  }

  Future<void> deletePaymentMethod() async {
    prefs.setBool("paymentMethodIsAdded", false);

    try {
      var paymentMethodId = "";

      // Delete Payment Method ID from backend for the customer
      await ref
          .read(paymentMethodNotifierProvider.notifier)
          .deletePaymentMethod(paymentMethodId: paymentMethodId);

      ref.read(paymentMethodNotifierProvider).whenOrNull(error: (e, _) {
        return context.alert('An error occurred: $e');
      }, data: (_) async {
        setState(() {
          paymentMethodIsAdded == false;
        });
        prefs.setBool("paymentMethodIsAdded", paymentMethodIsAdded);

        log("Payment method is added: $paymentMethodIsAdded");

        prefs.setBool("paymentMethodIsAdded", false);
        context.alert("Payment method deleted successfully");
        context.router.popForced();
      });
    } on SocketException {
      if (mounted) context.alert("Please connect to the internet");
    } on StripeException catch (e, stackTrace) {
      log(
        "Error deleting payment method: $e",
        name: "Stripe",
        stackTrace: stackTrace,
      );
    } catch (e, stackTrace) {
      log(
        "Error deleting payment method: $e",
        name: "BACKEND",
        stackTrace: stackTrace,
      );
    }
  }
}
