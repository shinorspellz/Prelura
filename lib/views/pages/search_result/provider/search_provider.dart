import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

import '../../../../controller/product/brands_provider.dart';
import '../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/app_checkbox.dart';
import '../../../widgets/bottom_sheet.dart';

final searchFilterProvider =
    StateNotifierProvider<SearchFilterNotifier, Map<FilterTypes, String>>(
        (ref) {
  return SearchFilterNotifier(ref);
});

final searchTextController = StateProvider<TextEditingController>(
  (_) => TextEditingController(),
);

final showSearchProducts = StateProvider<bool>((_) => false);

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
final filterUserProductProvider = StateNotifierProvider.autoDispose<
    FilterUserProductNotifier, Map<FilterTypes, String>>((ref) {
  return FilterUserProductNotifier(ref);
});

class FilterUserProductNotifier
    extends StateNotifier<Map<FilterTypes, String>> {
  final Ref ref;
  FilterUserProductNotifier(this.ref) : super({});

  // Update filter to only allow one entry in the state
  void updateFilter(FilterTypes filterType, String value, String? username) {
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

  void _updateProductFiltersInput(
      FilterTypes filterType, String value, int userId) {
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

final productFilterProvider = StateNotifierProvider.autoDispose<
    ProductFilterNotifier, Map<FilterTypes, String>>((ref) {
  return ProductFilterNotifier(ref);
});

class ProductFilterNotifier extends StateNotifier<Map<FilterTypes, String>> {
  final Ref ref;
  ProductFilterNotifier(this.ref) : super({});

  void updateFilter(FilterTypes filterType, String value) {
    // Update the local filter state
    state = state..[filterType] = value;

    final providerFilter = ref.read(
        filteredProductProvider((Input$ProductFiltersInput(), '')).notifier);

    final updatedFilter = providerFilter.currentFilter?.copyWith(
        brand: filterType == FilterTypes.brand
            ? int.tryParse(value)
            : providerFilter.currentFilter?.brand,
        size: filterType == FilterTypes.size
            ? Enum$SizeEnum.values.firstWhere((e) => e.name == value)
            : providerFilter.currentFilter?.size,
        condition: filterType == FilterTypes.condition
            ? ConditionsEnum.values.where((e) => e.name == value).firstOrNull
            : providerFilter.currentFilter?.condition,
        style: filterType == FilterTypes.style
            ? Enum$StyleEnum.values.where((e) => e.name == value).firstOrNull
            : providerFilter.currentFilter?.style,
        category: filterType == FilterTypes.category
            ? int.tryParse(ref
                .watch(categoryProvider)
                .valueOrNull
                ?.where((e) => e.name == value)
                .firstOrNull
                ?.id)
            : providerFilter.currentFilter?.category);

    providerFilter.updateFilter(updatedFilter!);

    // Invalidate the provider to trigger a rebuild
    ref.invalidate(filteredProductProvider);
  }

  void clearFilter() {
    state = {};
    ref.invalidate(filteredProductProvider);
  }
}

void ShowFilteredProductFilterModal(
    BuildContext context, FilterTypes filterType, WidgetRef ref) {
  final filterNotifier = ref.watch(productFilterProvider.notifier);

  final filterOptions = {
    FilterTypes.size: Enum$SizeEnum.values
        .where((e) => e != Enum$SizeEnum.$unknown)
        .map((e) => e.name)
        .toList(),
    FilterTypes.style: Enum$StyleEnum.values
        .where((e) => e != Enum$StyleEnum.$unknown)
        .map((e) => e.name)
        .toList(),
    FilterTypes.brand:
        ref.watch(brandsProvider).valueOrNull?.map((e) => e.name).toList() ??
            [],
    FilterTypes.category:
        ref.watch(categoryProvider).valueOrNull?.map((e) => e.name).toList() ??
            [],
    FilterTypes.condition:
        ConditionsEnum.values.map((e) => e.simpleName).toList(),
    // FilterTypes.color: ref.watch(colorsProvider).keys.toList(),
  };
  String? selectedOptions = ref.read(productFilterProvider)[filterType];

  VBottomSheetComponent.customBottomSheet(
    removeSidePadding: true,
    context: context,
    child: StatefulBuilder(builder: (context, setState) {
      return Consumer(
          builder: (context, ref, _) => ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 500,
                  // minHeight: 250,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: filterOptions[filterType]!
                      .map((e) => PreluraCheckBox(
                          isChecked: selectedOptions == e,
                          onChanged: (value) {
                            filterNotifier.updateFilter(filterType, e);
                            setState(() {
                              selectedOptions = e;
                            });

                            Navigator.pop(context);
                          },
                          title: e.replaceAll("_", " ")))
                      .toList(),
                ),
              ));
    }),
  );
}
