import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/user_order.dart';
import 'package:prelura_app/model/product/order/user_order.dart';
import 'package:prelura_app/views/pages/my_order/widget/order_card.dart';

class OrdersTabView extends ConsumerWidget {
  const OrdersTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userOrderState = ref.watch(userOrderProvider);
    bool isLoading = userOrderState.isLoading;
    final List<OrderInfo> orders = userOrderState.userOrders ?? [];
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return (orders.isNotEmpty)
        ? ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            shrinkWrap: true,
            itemCount: orders.length,
            itemBuilder: (context, index) {
              final order = orders[index];
              return OrderCard(order: order);
            },
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.receipt_long,
                size: 80,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              const Text(
                'No orders yet',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 5),
              // Text(
              //   'When you $status something in $type, it’ll be listed here',
              //   style: const TextStyle(fontSize: 14, color: Colors.grey),
              //   textAlign: TextAlign.center,
              // ),
            ],
          );
  }
}
