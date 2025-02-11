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

import '../payment_method_controller.dart';

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

  void updateOrderState(Map<String, dynamic> data) {
    /// Helper function to update a set based on a new value.
    Set<String> updateList(Set<String>? currentList, dynamic newValue) {
      if (newValue == null) return currentList ?? {};
      final updatedList = Set<String>.from(currentList ?? {});
      updatedList.contains(newValue)
          ? updatedList.remove(newValue)
          : updatedList.add(newValue);
      return updatedList;
    }

    /// Clone current state user orders to update them safely.
    Map<String, List<UserOrderInfo>> updatedUserOrders =
        Map.from(state.userOrders ?? {});

    /// Update userOrders if data contains the key.
    if (data.containsKey('userOrders')) {
      final userOrdersData =
          data['userOrders'] as Map<String, List<UserOrderInfo>?>;
      userOrdersData.forEach((key, value) {
        updatedUserOrders[key] = value ?? [];
      });
    }

    log(":::: The available keys ::: ${data.keys}");
    log(":::: The processing type ::: ${data["processingType"]}");

    /// Update processing types set.
    final updatedProcessingType = data.containsKey('processingType')
        ? updateList(state.processingTypes, data['processingType'])
        : state.processingTypes;

    /// Update state with new values.
    state = state.copyWith(
      isLoading: data["isLoading"] ?? state.isLoading,
      processingTypes: updatedProcessingType,
      totalOrders: data['totalOrders'] ?? state.totalOrders,
      filterType: data['filterType'] ?? state.filterType,
      userOrders: updatedUserOrders,
    );
  }

  createOrder(BuildContext context,
      {int? productId,
      List<int>? productIds,
      double? shippingFee,
      required String paymentMethodId}) async {
    try {
      updateOrderState({
        "processingType": "createOrder",
        "isProcessing": true,
      });
      log(paymentMethodId, name: "payment method");

      final Mutation$CreateOrder$createOrder? response =
          await orderRepo.createOrder(
        productId: productId,
        productIds: productIds,
        shippingFee: shippingFee,
      );
      if (response != null && response.success!) {
        CreateOrderInfo orderInfo = CreateOrderInfo.fromJson(response.toJson());
        await ref.read(paymentProvider.notifier).createPaymentIntent(
            int.parse(orderInfo.order!.id!), paymentMethodId);

        ref.read(paymentProvider).whenOrNull(
              error: (e, _) {
                log(e.toString(), name: "Create order");
                log(_.toString(), name: "create Order ");
                context.alert('An error occured while creating order');
              },
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

  Future<UserOrderResponse?>? getOrders(
      {Input$OrderFiltersInput? filterType}) async {
    int pageCount = 20;
    int pageNumber = 1;

    try {
      final UserOrderResponse response = await orderRepo.getUserOrders(
        pageCount: pageCount,
        pageNumber: pageNumber,
        filters: filterType,
      );
      return response;
    } catch (e) {
      log("User Orders Error: $e");
    } finally {
      updateOrderState({
        "isLoading": false,
      });
    }
    return null;

    // state = await AsyncValue.guard(
    //   () async {
    //     await _repo.getUserOrders(orderId);
    //     return null;
    //   },
    // );
  }

  fetchUserOrders() async {
    UserOrderResponse? soldItems = await getOrders(
        filterType: Input$OrderFiltersInput(
      isSeller: true,
    ));
    updateOrderState({
      "totalOrders": soldItems?.userOrdersTotalNumber ?? 0,
      "userOrders": {"Sold": soldItems?.userOrders},
    });

    UserOrderResponse? boughtItems = await getOrders(
        filterType: Input$OrderFiltersInput(
      isSeller: false,
    ));
    updateOrderState({
      "totalOrders": boughtItems?.userOrdersTotalNumber ?? 0,
      "userOrders": {"Bought": boughtItems?.userOrders},
    });
  }

  List<UserOrderInfo> getFilterOthers(
      {required String type, required String status}) {
    final List<UserOrderInfo> availableOrders = state.userOrders?[type] ?? [];
    List<UserOrderInfo> filteredOrders = [];
    if (availableOrders.isNotEmpty) {
      switch (status) {
        case "In Progress":
          {
            for (var orderInfo in availableOrders) {
              if (orderInfo.status == "CONFIRMED" ||
                  orderInfo.status == "PENDING" ||
                  orderInfo.status == "SHIPPED") {
                filteredOrders.add(orderInfo);
              }
            }
            break;
          }
        case "Cancelled":
          {
            for (var orderInfo in availableOrders) {
              if (orderInfo.status == "CANCELLED" ||
                  orderInfo.status == "REFUNDED") {
                filteredOrders.add(orderInfo);
              }
            }
            break;
          }
        case "Completed":
          {
            for (var orderInfo in availableOrders) {
              if (orderInfo.status == "DELIVERED") {
                filteredOrders.add(orderInfo);
              }
            }
            break;
          }
      }
    }

    return filteredOrders;
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
  final Map<String, List<UserOrderInfo>>? userOrders;

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
    Map<String, List<UserOrderInfo>>? userOrders,
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
