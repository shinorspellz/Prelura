import 'package:flutter/material.dart';

class OrdersTabView extends StatelessWidget {
  final String type;
  final String status;

  const OrdersTabView({super.key, required this.type, required this.status});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
      ),
    );
  }
}