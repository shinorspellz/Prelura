import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/brand_provider.dart';

@RoutePage()
class SizeSelectionPage extends ConsumerWidget {
  final List<String> sizes = [
    'XS',
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
    '4XL',
    '5XL',
    '6XL',
    '7XL',
    '8XL'
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sizes'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Select a size\nMatch the size to the item’s label.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView(
              children: sizes.map((size) {
                return ListTile(
                  title: Text(size),
                  trailing: Radio<String>(
                      value: size,
                      groupValue: selectedSize,
                      onChanged: (value) => {
                            ref
                                .read(selectedSizeProvider.notifier)
                                .selectSize(value),
                            context.back()
                          }),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
