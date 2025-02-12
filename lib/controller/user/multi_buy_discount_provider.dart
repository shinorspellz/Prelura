import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/di.dart';

import '../../model/user/multi_buy_discounts/multi_buy_discounts_model.dart';

final userMultiBuyDiscountProvider =
    FutureProvider.family<List<MultiBuyDiscountModel>, int?>(
        (ref, userId) async {
  final repo = ref.watch(userRepo);

  final result = await repo.getUserMultiBuyDiscounts(userId: userId);

  return result;
});

final userMultiBuyerDiscountNotifierProvider =
    AsyncNotifierProvider<UserMultiBuyerDiscountNotifier, void>(
        UserMultiBuyerDiscountNotifier.new);

class UserMultiBuyerDiscountNotifier extends AsyncNotifier<void> {
  late final _repo = ref.read(userRepo);

  @override
  FutureOr<void> build() {}

  Future<bool> createMultiBuyDiscounts({
    required int minItems,
    required String discountPercentage,
  }) async {
    state = const AsyncLoading();

    try {
      final result = await _repo.createOrUpdateUserMultiBuyDiscounts(
        minItems: minItems,
        discountPercentage: discountPercentage,
      );

      state = AsyncValue.data(result);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<bool> updateMultiBuyDiscounts({
    required int minItems,
    required String discountPercentage,
    required int id,
  }) async {
    state = const AsyncLoading();

    try {
      final result = await _repo.createOrUpdateUserMultiBuyDiscounts(
        minItems: minItems,
        discountPercentage: discountPercentage,
        id: id,
      );

      state = AsyncValue.data(result);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  /// Deactivates all multi-buy discounts
  Future<void> deactivateMultiBuyDiscounts() async {
    // Set state to loading
    state = const AsyncLoading();

    try {
      final result = await _repo.deactivateUserMultiBuyDiscounts();

      state = AsyncValue.data(result);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
