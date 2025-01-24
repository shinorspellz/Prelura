import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/product/order/order_model.dart';

final orderProvider =
    AsyncNotifierProvider<OrderProvider, OrderModel?>(OrderProvider.new);

class OrderProvider extends AsyncNotifier<OrderModel?> {
  late final _repo = ref.read(productRepo);

  @override
  FutureOr<OrderModel?> build() => null;

  Future<void> createOrder(int productId, [int qty = 1]) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        final result = await _repo.orderProduct(productId: productId, qty: qty);
        return result;
      },
    );
  }

  Future<void> cancelOrder(int orderId) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await _repo.cancelOrder(orderId);
        return null;
      },
    );
  }

  Future<void> getOrders({Input$OrderFiltersInput? filterType}) async {
    int pageCount = 20;
    int orderTotalCount = 0;
    int pageNumber = 1;

    state = AsyncLoading();
    await _repo.getUserOrders(
      pageCount: pageCount,
      pageNumber: pageNumber,
      filters: filterType,
    );
    // state = await AsyncValue.guard(
    //   () async {
    //     await _repo.getUserOrders(orderId);
    //     return null;
    //   },
    // );
  }
}
