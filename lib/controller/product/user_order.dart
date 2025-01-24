import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/product/order/user_order.dart';
import 'package:prelura_app/repo/product/product_repo.dart';

final userOrderProvider =
    StateNotifierProvider<UserOrdersNotifier, UserOrderState>((
  ref,
) {
  final repo = ref.read(productRepo);
  return UserOrdersNotifier(ref, repo);
});

class UserOrdersNotifier extends StateNotifier<UserOrderState> {
  final Ref ref;
  final ProductRepo _repo;
  UserOrdersNotifier(this.ref, this._repo)
      : super(UserOrderState(isLoading: false));

  updateState(Map<String, dynamic> data) {
    state = state.copyWith(
      isLoading: data['isLoading'] ?? state.isLoading,
      totalOrders: data['totalOrders'] ?? state.totalOrders,
      filterType: data['filterType'] ?? state.filterType,
      userOrders: data['userOrders'] ?? state.userOrders,
    );
  }

  Future<void> getOrders({Input$OrderFiltersInput? filterType}) async {
    int pageCount = 20;
    int pageNumber = 1;

    try {
      UserOrders response = await _repo.getUserOrders(
        pageCount: pageCount,
        pageNumber: pageNumber,
        filters: filterType,
      );
      updateState({
        "isLoading": false,
        "totalOrders": response.userOrdersTotalNumber ?? 0,
        "userOrders": response.userOrders,
      });
    } catch (e) {
      log("User Orders Error: $e");
    } finally {
      updateState({
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
}

class UserOrderState {
  final bool isLoading;
  final int totalOrders;
  final Input$OrderFiltersInput? filterType;
  final List<OrderInfo>? userOrders;

  UserOrderState({
    this.isLoading = false,
    this.totalOrders = 0,
    this.userOrders,
    this.filterType,
  });

  UserOrderState copyWith({
    bool? isLoading,
    int? totalOrders,
    List<OrderInfo>? userOrders,
    Input$OrderFiltersInput? filterType,
  }) {
    return UserOrderState(
      isLoading: isLoading ?? this.isLoading,
      totalOrders: totalOrders ?? this.totalOrders,
      userOrders: userOrders ?? this.userOrders,
      filterType: filterType ?? this.filterType,
    );
  }
}
