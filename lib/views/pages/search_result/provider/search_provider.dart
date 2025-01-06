import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

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

// @AYOPELUMI move this to a new provider file
final filterUserProductProvider = StateNotifierProvider<FilterUserProductNotifier, Map<FilterTypes, String>>((ref) {
  return FilterUserProductNotifier(ref);
});

class FilterUserProductNotifier extends StateNotifier<Map<FilterTypes, String>> {
  final Ref ref;
  FilterUserProductNotifier(this.ref) : super({});

  // Update filter to only allow one entry in the state
  void updateFilter(FilterTypes filterType, String value) {
    // state = {filterType: value}; // Replace state with a single entry
    // log(state.toString());
    // _updateProductFiltersInput(filterType, value, userId);
    state = state..[filterType] = value;
    ref.invalidate(userProduct);
  }

  // Clear filter (reset state to empty)
  void clearFilter() {
    state = {};
    ref.invalidate(userProduct);
    ref.invalidate(searchProductProvider);
  }

  void _updateProductFiltersInput(FilterTypes filterType, String value, int userId) {
    // // Ensure currentFilters is never null
    // final currentFilters = ref.read(userProductFilter) ?? Input$ProductFiltersInput();
    // if (filterType == FilterTypes.brand) {
    //   final brandId = ref.watch(userProductGroupingByBrandProvider((userId ?? 0, Enum$ProductGroupingEnum.BRAND))).valueOrNull?.where((e) => e.name == value).firstOrNull;
    //   ref.read(userProductFilter.notifier).state = Input$ProductFiltersInput(brand: brandId?.id);
    //   return;
    // }

    // if (filterType == FilterTypes.size) {
    //   ref.read(userProductFilter.notifier).state = Input$ProductFiltersInput(size: Enum$SizeEnum.values.firstWhere((e) => e.name == value));
    //   return;
    // }
    // // Update only the relevant field in the filter
    // final updatedFilters = currentFilters.copyWith(
    //   brand: filterType == FilterTypes.brand
    //       ? int.tryParse(value)
    //       : currentFilters.brand,
    //   size: filterType == FilterTypes.size
    //       ? Enum$SizeEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.size!)
    //       : currentFilters.size,
    //   style: filterType == FilterTypes.style
    //       ? Enum$StyleEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.style!)
    //       : currentFilters.style,
    //   condition: filterType == FilterTypes.condition
    //       ? ConditionsEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.condition!)
    //       : currentFilters.condition,
    // );

    // // Update the userProductFilterProvider state with updatedFilters
    // ref.read(userProductFilter.notifier).state = updatedFilters;
    // log("ProductFiltersInput updated: ${updatedFilters.toJson()}");
  }
}
