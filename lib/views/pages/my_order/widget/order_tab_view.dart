import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/order_provider.dart';
import 'package:prelura_app/model/product/order/user_order.dart';
import 'package:prelura_app/views/pages/my_order/widget/order_card.dart';

class OrdersTabView extends ConsumerWidget {
  final List<UserOrderInfo> orders;
  final String status, type;
  const OrdersTabView({
    super.key,
    required this.orders,
    required this.status,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userOrderState = ref.watch(orderProvider);
    bool isLoading = userOrderState.isLoading;
    // userOrderState.userOrders ?? [];
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
        : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            Text(
              '$status items in $type\nwill be listed here',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ]);
  }
}
