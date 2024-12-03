import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/My%20Order/widget/order_card.dart';

import '../provider/main_provider.dart';

class OrdersTabView extends ConsumerWidget {
  final String type;
  final String status;

  const OrdersTabView({super.key, required this.type, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredOrders = ref.watch(filteredOrdersProvider);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: (filteredOrders.isNotEmpty)
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: filteredOrders.length,
                itemBuilder: (context, index) {
                  final order = filteredOrders[index];
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
                  Text(
                    'When you $status something in $type, it’ll be listed here',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ));
  }
}
