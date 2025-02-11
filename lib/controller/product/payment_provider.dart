import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

final paymentProvider =
    AsyncNotifierProvider<PaymentProvider, String?>(PaymentProvider.new);

class PaymentProvider extends AsyncNotifier<String?> {
  late final _repo = ref.read(paymentRepo);

  @override
  FutureOr<String?> build() => null;

  Future<void> createPaymentIntent(int orderId, String paymentMethodId) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        log(paymentMethodId, name: "Payment method Id");
        final response =
            await _repo.createPaymentIntent(orderId, paymentMethodId);
        final (clientSecret, paymentRef) = response;
        log(paymentRef, name: 'PaymentProvider1');
        await _makePayment(clientSecret, paymentMethodId);
        log(paymentRef, name: 'PaymentProvider2');

        final confirmation = await _repo.confirmPayment(paymentRef);
        return confirmation;
      },
    );
  }

  Future<void> _makePayment(String clientSecret, String paymentMethodId) async {
    // state = AsyncLoading();
    // logger.d('Make Payment was called');
    // Stripe.instance.retrieveCustomerSheetPaymentOptionSelection(

    // );

    // await Stripe.instance.initPaymentSheet(
    //   paymentSheetParameters: SetupPaymentSheetParameters(
    //       // customerId: "cus_RkkH7WSqGsc2sn",
    //       paymentIntentClientSecret: clientSecret,
    //       // customerSessionClientSecret: "pm_1QrHJF2LCwCAAIPipuf0NSrH",
    //       merchantDisplayName: 'Prelura',
    //       paymentMethodOrder: ["pm_1QrHJF2LCwCAAIPipuf0NSrH"]),
    // );
    final billingDetails = BillingDetails(
      email: "ayopelumi",
      phone: '+48888000888',
      address: Address(
        city: 'Houston',
        country: 'US',
        line1: '1459  Circle Drive',
        line2: '',
        state: 'Texas',
        postalCode: '77063',
      ),
    );

    await Stripe.instance.confirmPayment(
      paymentIntentClientSecret: clientSecret,
      data: PaymentMethodParams.cardFromMethodId(
          paymentMethodData: PaymentMethodDataCardFromMethod(
              paymentMethodId: paymentMethodId)),
      options: PaymentMethodOptions(
        setupFutureUsage: PaymentIntentsFutureUsage.OffSession,
      ),
    );
    // await _displayPaymentSheet();
  }

  Future<void> _displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } on StripeException catch (e) {
      throw e.error.localizedMessage ?? 'An error occured';
    }
  }
}
