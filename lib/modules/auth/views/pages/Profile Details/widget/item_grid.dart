import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';

class ItemGrid extends StatelessWidget {
  final List items = [
    DisplayCard(),
    DisplayCard(),
    DisplayCard(),
    DisplayCard(),
    DisplayCard(),
    DisplayCard(),
    // Add more items
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        padding: const EdgeInsets.all(16.0),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.66,
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
