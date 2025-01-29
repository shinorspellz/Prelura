import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/payment_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/product/order/order_model.dart';
import 'package:prelura_app/model/product/order/user_order.dart';
// import 'package:prelura_app/model/product/order/user_order.dart';
import 'package:prelura_app/repo/product/offer_repo.dart';

final activeTabProvider = StateProvider<String>((ref) => 'Sold');
final orderProvider = StateNotifierProvider<OrderNotifier, OrderState>((ref) {
  final repoProvider = ref.read(offerRepoProvider);
  return OrderNotifier(ref, repoProvider);
});

class OrderNotifier extends StateNotifier<OrderState> {
  final OfferRepo orderRepo;
  final Ref ref;
  OrderNotifier(this.ref, this.orderRepo)
      : super(OrderState(
          isLoading: false,
          processingTypes: {},
        ));

  updateOrderState(Map<String, dynamic> data) {
    Set<String> updateList(Set<String>? currentList, dynamic newValue) {
      if (newValue == null) return currentList ?? {};
      final updatedList = Set<String>.from(currentList ?? {});
      updatedList.contains(newValue)
          ? updatedList.remove(newValue)
          : updatedList.add(newValue);
      return updatedList;
    }

    log("::::The available keys ::: ${data.keys}");
    log("::::The available keys ::: ${data["processingType"]}");

    final updatedProcessingType = data.containsKey('processingType')
        ? updateList(state.processingTypes, data['processingType'])
        : state.processingTypes;

    state = state.copyWith(
      isLoading: data["isLoading"] ?? state.isLoading,
      processingTypes: updatedProcessingType,
      totalOrders: data['totalOrders'] ?? state.totalOrders,
      filterType: data['filterType'] ?? state.filterType,
      userOrders: data['userOrders'] ?? state.userOrders,
    );
  }

  createOrder(
    BuildContext context, {
    int? productId,
    List<int>? productIds,
    double? shippingFee,
  }) async {
    try {
      updateOrderState({
        "processingType": "createOrder",
        "isProcessing": true,
      });

      final Mutation$CreateOrder$createOrder? response =
          await orderRepo.createOrder(
        productId: productId,
        productIds: productIds,
        shippingFee: shippingFee,
      );
      if (response != null && response.success!) {
        CreateOrderInfo orderInfo = CreateOrderInfo.fromJson(response.toJson());
        await ref.read(paymentProvider.notifier).createPaymentIntent(
              int.parse(orderInfo.order!.id!),
              Enum$PaymentMethodEnum.CARD,
            );

        ref.read(paymentProvider).whenOrNull(
              error: (e, _) =>
                  context.alert('An error occured while creating order'),
              data: (_) => context.router.popForced(),
            );
      }
    } on OfferException catch (e) {
      log('Offer exception: $e');
      context.alert(e.message);
    } finally {
      updateOrderState({
        "processingType": "createOrder",
        "isProcessing": false,
      });
    }
  }

  Future<void> getOrders({Input$OrderFiltersInput? filterType}) async {
    int pageCount = 20;
    int pageNumber = 1;

    try {
      final UserOrderResponse response = await orderRepo.getUserOrders(
        pageCount: pageCount,
        pageNumber: pageNumber,
        filters: filterType,
      );
      updateOrderState({
        "totalOrders": response.userOrdersTotalNumber ?? 0,
        "userOrders": response.userOrders,
      });
    } catch (e) {
      log("User Orders Error: $e");
    } finally {
      updateOrderState({
        "isLoading": false,
      });
    }

    // state = await AsyncValue.guard(
    //   () async {
    //     await _repo.getUserOrders(orderId);
    //     return null;
    //   },
    // );
  }

  // late final _repo = ref.read(productRepo);
  //
  // @override
  // FutureOr<OrderModel?> build() => null;
  //
  // Future<void> createOrder(int productId, [int qty = 1]) async {
  //   state = AsyncLoading();
  //
  //   state = await AsyncValue.guard(
  //     () async {
  //       final result = await _repo.orderProduct(productId: productId, qty: qty);
  //       return result;
  //     },
  //   );
  // }
  //
  // Future<void> cancelOrder(int orderId) async {
  //   state = AsyncLoading();
  //
  //   state = await AsyncValue.guard(
  //     () async {
  //       await _repo.cancelOrder(orderId);
  //       return null;
  //     },
  //   );
  // }
}

class OrderState {
  final bool isLoading;
  final Set<String> processingTypes;
  final int totalOrders;
  final Input$OrderFiltersInput? filterType;
  final List<OrderInfo>? userOrders;

  OrderState({
    required this.isLoading,
    required this.processingTypes,
    this.totalOrders = 0,
    this.userOrders,
    this.filterType,
  });

  OrderState copyWith({
    bool? isLoading,
    Set<String>? processingTypes,
    int? totalOrders,
    List<OrderInfo>? userOrders,
    Input$OrderFiltersInput? filterType,
  }) {
    return OrderState(
      processingTypes: processingTypes ?? this.processingTypes,
      isLoading: isLoading ?? this.isLoading,
      totalOrders: totalOrders ?? this.totalOrders,
      userOrders: userOrders ?? this.userOrders,
      filterType: filterType ?? this.filterType,
    );
  }
}
