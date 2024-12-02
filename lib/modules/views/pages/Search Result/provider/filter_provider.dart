import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/card_model.dart';
import '../../../../../shared/mock_data.dart';
import 'search_provider.dart';

// Provider to store the current search query
final searchQueryProvider = StateProvider<String>((ref) => '');

final filteredResultsProvider = Provider<List<PreluraCardModel>>((ref) {
  final query = ref.watch(searchQueryProvider).toLowerCase();
  final filters = ref.watch(searchFilterProvider);

  return mockData.where((model) {
    // Match the query (case-insensitive)
    final title = model.title.toLowerCase();
    bool matchesQuery = title.contains(query);

    // Match the filters
    bool matchesFilters = filters.entries.every((filter) {
      final filterKey = filter.key.toLowerCase();
      final filterValue = filter.value; // This can be a single value or a List<String>

      print("$filterKey is $filterValue");

      final itemValue = model.toMap()[filterKey];

      print("Item value is: $itemValue");

      if (itemValue == null) return false; // Filter key does not exist in item

      // Handle List values (e.g., color as List<String>) by checking if filterValue is a list
      // If filterValue is a list, check if any of the values in filterValue match itemValue
      return filterValue.map((v) => v.toLowerCase()).any((filterVal) => itemValue.toString().toLowerCase().contains(filterVal));

      // If filterValue is a single value (not a List), directly compare
      return itemValue.toString().toLowerCase() == filterValue.toString().toLowerCase();
    });

    return matchesQuery && matchesFilters;
  }).toList();
});
