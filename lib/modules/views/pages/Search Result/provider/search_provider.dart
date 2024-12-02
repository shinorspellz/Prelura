import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchFilterProvider =
    StateNotifierProvider<SearchFilterNotifier, Map<String, List<String>>>(
        (ref) {
  return SearchFilterNotifier();
});

class SearchFilterNotifier extends StateNotifier<Map<String, List<String>>> {
  SearchFilterNotifier() : super({});

  // Add filter value
  void updateFilter(String filterType, String value) {
    final currentFilters = state[filterType] ?? [];
    if (!currentFilters.contains(value)) {
      state = {
        ...state,
        filterType: [...currentFilters, value], // Immutably add value
      };
    }
  }

  // Remove filter value
  void removeFilter(String filterType, String value) {
    final currentFilters = state[filterType] ?? [];
    final updatedFilters =
        currentFilters.where((item) => item != value).toList();

    if (updatedFilters.isEmpty) {
      state = {...state}..remove(filterType); // Remove key if empty
    } else {
      state = {
        ...state,
        filterType: updatedFilters, // Immutably remove value
      };
    }
  }

  void clearAllFilters() {
    state = {};
  }
}
