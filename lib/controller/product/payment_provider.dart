import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

final paymentProvider = AsyncNotifierProvider<PaymentProvider, String?>(PaymentProvider.new);

class PaymentProvider extends AsyncNotifier<String?> {
  late final _repo = ref.read(paymentRepo);

  @override
  FutureOr<String?> build() => null;

  Future<void> createPaymentIntent(int orderId, Enum$PaymentMethodEnum paymentMethod) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        final response = await _repo.createPaymentIntent(orderId, paymentMethod);
        final (clientSecret, paymentRef) = response;
        await _makePayment(clientSecret);

        log(paymentRef, name: 'PaymentProvider');

        final confirmation = await _repo.confirmPayment(paymentRef);
        return confirmation;
      },
    );
  }

  Future<void> _makePayment(String clientSecret) async {
    // state = AsyncLoading();
    // logger.d('Make Payment was called');

    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: 'Prelura',
      ),
    );
    await _displayPaymentSheet();
  }

  Future<void> _displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } on StripeException catch (e) {
      throw e.error.localizedMessage ?? 'An error occured';
    }
  }
}
