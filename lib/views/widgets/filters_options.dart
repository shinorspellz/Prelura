import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/colors.dart';
import '../pages/search_result/provider/search_provider.dart';
import '../pages/search_result/view/search_result.dart';

class FiltersOptions extends ConsumerWidget {
  final List<FilterTypes> excludedFilterTypes; // List of excluded filter types
  final Function()? onTap;
  const FiltersOptions(
      {super.key, this.excludedFilterTypes = const [], this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(productFilterProvider);
    final state = ref.watch(productFilterProvider.notifier);
    log('filters: $filters');

    return ProviderScope(
      overrides: [
        // This ensures a fresh provider instance for this screen
        productFilterProvider.overrideWith((ref) => ProductFilterNotifier(ref)),
      ],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          children: [
            // FilterChip(
            //   label: const Row(
            //     children: [
            //       Icon(Icons.filter_list),
            //       SizedBox(
            //         width: 5,
            //       ),
            //       Text('Filter'),
            //     ],
            //   ),
            //   onSelected: (_) {
            //     state.clearFilter();
            //     onTap?.call();
            //   },
            //   selected: false,
            //   checkmarkColor: Theme.of(context).iconTheme.color,
            //   backgroundColor: Colors.transparent, // Transparent background
            //   selectedColor:
            //       Colors.blue.withOpacity(0.1), // Light blue when selected
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8), // Rounded corners
            //     side: BorderSide(
            //       color: Theme.of(context).dividerColor, // Border color
            //       width: 1.5, // Border width
            //     ),
            //   ),
            // ),
            ...FilterTypes.values
                .where((filter) => ![
                      ...excludedFilterTypes,
                      FilterTypes.gender,
                      FilterTypes.brand
                    ].contains(filter))
                .map((filter) {
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
                  onSelected: (isSelected) async {
                    ShowFilteredProductFilterModal(context, filter, ref);
                  },
                  selected: filters.containsKey(filter),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
