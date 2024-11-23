import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../res/colors.dart';
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

  SizeSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Sizes",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select a size\nMatch the size to the item’s label.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "View size guide",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: PreluraColors.activeColor,
                    decoration: TextDecoration.underline,
                    decorationColor: PreluraColors.activeColor,
                    decorationThickness: 2,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "All Sizes",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: sizes.map((size) {
                return Column(
                  children: [
                    ListTile(
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
                    ),
                    Divider(
                      color: Theme.of(context).dividerColor,
                      height: 10,
                      thickness: 3,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
