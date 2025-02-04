import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';

final paymentMethodNotifierProvider =
    AsyncNotifierProvider<_PaymentMethodController, void>(
        _PaymentMethodController.new);

class _PaymentMethodController extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);

  @override
  Future<void> build() async {}

  Future<void> addPaymentMethod({required String paymentMethodId}) async {
    state = const AsyncLoading();

    try {
      state = await AsyncValue.guard(
        () async {
          await _repo.addPaymentMethod(paymentMethodId: paymentMethodId);
        },
      );
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> deletePaymentMethod({required String paymentMethodId}) async {
    state = const AsyncLoading();

    try {
      state = await AsyncValue.guard(
        () async {
          await _repo.deletePaymentMethod(paymentMethodId: paymentMethodId);
        },
      );
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}
