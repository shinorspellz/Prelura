import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';

final searchFilterProvider = StateNotifierProvider<SearchFilterNotifier, Map<FilterTypes, String>>((ref) {
  return SearchFilterNotifier(ref);
});

class SearchFilterNotifier extends StateNotifier<Map<FilterTypes, String>> {
  final Ref ref;
  SearchFilterNotifier(this.ref) : super({});

  // Add filter value
  void updateFilter(FilterTypes filterType, String value) {
    // if (!state.containsKey(filterType)) {
    //   state.addAll({
    //     filterType: value,
    //   });
    // }

    state = state..[filterType] = value;
    ref.invalidate(searchProductProvider);
  }

  // Remove filter value
  void removeFilter(String filterType, String value) {
    state.remove(filterType);
    // final currentFilters = state[filterType] ?? [];
    // final updatedFilters = currentFilters.where((item) => item != value).toList();

    // if (updatedFilters.isEmpty) {
    //   state = {...state}..remove(filterType); // Remove key if empty
    // } else {
    //   state = {
    //     ...state,
    //     filterType: updatedFilters, // Immutably remove value
    //   };
    // }
  }

  void clearAllFilters() {
    state = {};
  }
}
