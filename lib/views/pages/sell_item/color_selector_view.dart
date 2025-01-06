import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/gesture_navigator.dart';

import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../../controller/product/provider/color_selector_provider.dart';
import '../../../controller/product/provider/sell_item_provider.dart';

@RoutePage()
class ColorSelectorScreen extends ConsumerWidget {
  const ColorSelectorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch provider state
    final state = ref.watch(sellItemProvider).selectedColors;
    final notifier = ref.read(sellItemProvider.notifier);

    // Color options
    final colorOptions = ref.read(colorsProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Colours"),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose up to 2 colours",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "All Colours",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    thickness: 2,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: colorOptions.entries.map((entry) {
                  final colorName = entry.key;
                  final colorValue = entry.value;
                  final isSelected = notifier.isColorSelected(colorName);

                  return Column(
                    children: [
                      PreluraCheckBox(
                          colorName: colorValue,
                          title: colorName,
                          isChecked: isSelected,
                          onChanged: (isChecked) {
                            if (isChecked == true || isSelected) {
                              notifier.toggleColor(colorName);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "You can only select up to 2 colours.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          }),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 46),
              child: ElevatedButton(
                onPressed: state.isNotEmpty
                    ? () {
                        context.router.popForced();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: PreluraColors.activeColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Done",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: PreluraColors.white,
                          fontSize: getDefaultSize(),
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
