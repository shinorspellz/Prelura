import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:prelura_app/res/logs.dart';

final bookingPaymentNotifierProvider =
    AsyncNotifierProvider<BookingPaymentNotifier, void>(
        BookingPaymentNotifier.new);

class BookingPaymentNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> makePayment(String clientSecret) async {
    state = const AsyncLoading();
    logger.d('Make Payment was called');

    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: 'VModel',
        ),
      );

      final paymentResult = await _displayPaymentSheet();
      if (paymentResult) {
        state = const AsyncData(null);
      } else {
        state = AsyncError(
            'Payment sheet was dismissed without completing the payment.',
            StackTrace.current);
      }
    } catch (e, s) {
      if (e is StripeConfigException) {
        logger.e(e.message);
        state = AsyncError(e.message, s);
      } else {
        logger.e(e.toString());
        state = AsyncError(e.toString(), s);
      }
    }
  }

  Future<bool> _displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      return true;
    } on StripeException catch (e) {
      logger.e(e.error.localizedMessage ??
          'An error occurred while displaying the payment sheet.');
      return false;
    }
  }
}
