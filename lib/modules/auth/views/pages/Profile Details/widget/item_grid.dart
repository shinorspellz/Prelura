import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';

class ItemGrid extends StatelessWidget {
  final List items = [
    const DisplayCard(),
    const DisplayCard(),
    const DisplayCard(),
    const DisplayCard(),
    const DisplayCard(),
    const DisplayCard(),
    // Add more items
  ];

  ItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        padding: const EdgeInsets.all(16.0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.59,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return item;
        },
      );
    });
  }
}
