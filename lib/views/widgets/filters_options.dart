import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/colors.dart';
import '../pages/search_result/provider/search_provider.dart';
import '../pages/search_result/view/search_result.dart';

class FiltersOptions extends ConsumerWidget {
  const FiltersOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(productFilterProvider);
    final state = ref.watch(productFilterProvider.notifier);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
      child: Row(
        children: [
          FilterChip(
            label: const Row(
              children: [
                Icon(Icons.filter_list),
                SizedBox(
                  width: 5,
                ),
                Text('Filter'),
              ],
            ),
            onSelected: (_) => state.clearFilter(),
            selected: false,
            checkmarkColor: Theme.of(context).iconTheme.color,
            backgroundColor: Colors.transparent, // Transparent background
            selectedColor:
                Colors.blue.withOpacity(0.1), // Light blue when selected
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
              side: BorderSide(
                color: Theme.of(context).dividerColor, // Border color
                width: 1.5, // Border width
              ),
            ),
          ),
          ...FilterTypes.values.map((filter) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: FilterChip(
                checkmarkColor: filters.containsKey(filter)
                    ? PreluraColors.activeColor
                    : Theme.of(context).iconTheme.color,
                backgroundColor: Colors.transparent, // Transparent background
                selectedColor:
                    Colors.blue.withOpacity(0.1), // Light blue when selected
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  side: BorderSide(
                    color: filters.containsKey(filter)
                        ? PreluraColors.activeColor
                        : Theme.of(context).dividerColor, // Border color
                    width: 1.5, // Border width
                  ),
                ),
                label: Text(filter.simpleName),
                onSelected: (isSelected) {
                  // Show filter dialog to select values
                  ShowFilteredProductFilterModal(context, filter, ref);
                },
                selected: filters.containsKey(filter),
              ),
            );
          }),
        ],
      ),
    );
  }
}
