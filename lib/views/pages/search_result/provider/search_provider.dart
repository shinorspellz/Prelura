import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

import '../../../../controller/product/brands_provider.dart';
import '../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/app_button.dart';
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
  void removeFilter(FilterTypes filterType, String value) {
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

    log(filterType.toString());
    log(value);
    final providerFilter = ref.read(filteredProductProvider('').notifier);
    log(providerFilter.currentFilter!.toJson().toString(),
        name: ' filteredProducts filter in search provider ');

    if (filterType == FilterTypes.brand) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        brand: filterType == FilterTypes.brand
            ? int.parse(ref
                .watch(brandsProvider)
                .valueOrNull!
                .firstWhere((e) => e.name == value)
                .id
                .toString()) // Convert int? to String
            : providerFilter.currentFilter?.brand,
      );

      providerFilter.updateFilter(updatedFilter!);
      log(updatedFilter.toJson().toString(), name: ' filteredProducts filter');
      return;
    }

    if (filterType == FilterTypes.size) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        size: filterType == FilterTypes.size
            ? Enum$SizeEnum.values.firstWhere((e) => e.name == value)
            : providerFilter.currentFilter?.size,
      );

      providerFilter.updateFilter(updatedFilter!);
    }

    if (filterType == FilterTypes.style) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        style: filterType == FilterTypes.style
            ? Enum$StyleEnum.values.where((e) => e.name == value).firstOrNull
            : providerFilter.currentFilter?.style,
      );
      providerFilter.updateFilter(updatedFilter!);
    }

    if (FilterTypes.condition == filterType) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        condition: filterType == FilterTypes.condition
            ? ConditionsEnum.values
                .where((e) => e.simpleName == value)
                .firstOrNull
            : providerFilter.currentFilter?.condition,
      );

      providerFilter.updateFilter(updatedFilter!);
    }

    if (FilterTypes.category == filterType) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
          category: filterType == FilterTypes.category
              ? int.tryParse(ref
                  .watch(categoryProvider)
                  .valueOrNull
                  ?.where((e) => e.name == value)
                  .firstOrNull
                  ?.id)
              : providerFilter.currentFilter?.category);

      providerFilter.updateFilter(updatedFilter!);
    }

    // Invalidate the provider to trigger a rebuild
    // ref.invalidate(filteredProductProvider);
    // ref.refresh(filteredProductProvider("").future);

    // ref.invalidate(filteredProductProvider);
  }

  void removeFilter(FilterTypes filterType) {
    state.remove(filterType);
    ref.refresh(filteredProductProvider("").future);
  }

  void clearFilter() {
    state = {};
    ref.invalidate(filteredProductProvider);
  }
}

void ShowFilteredProductFilterModal(
    BuildContext context, FilterTypes filterType, WidgetRef ref) {
  final filterNotifier = ref.watch(productFilterProvider.notifier);
  final controller = ScrollController();

  controller.addListener(() {
    if (!context.mounted) return; // Guard against unmounted state
    final maxScroll = controller.position.maxScrollExtent;
    final currentScroll = controller.position.pixels;
    final delta = MediaQuery.of(context).size.height * 0.2;

    if (maxScroll - currentScroll <= delta) {
      // Trigger fetchMoreData for the relevant provider
      ref.read(brandsProvider.notifier).fetchMoreData();
    }
  });

  VBottomSheetComponent.customBottomSheet(
    removeSidePadding: true,
    context: context,
    child: StatefulBuilder(builder: (context, setState) {
      return Consumer(
        builder: (context, ref, _) {
          // Recompute `filterOptions` inside the `Consumer`
          final filterOptions = {
            FilterTypes.size: Enum$SizeEnum.values
                .where((e) => e != Enum$SizeEnum.$unknown)
                .map((e) => e.name)
                .toList(),
            FilterTypes.style: Enum$StyleEnum.values
                .where((e) => e != Enum$StyleEnum.$unknown)
                .map((e) => e.name)
                .toList(),
            FilterTypes.brand: ref
                    .watch(brandsProvider)
                    .valueOrNull
                    ?.map((e) => e.name)
                    .toList() ??
                [],
            FilterTypes.category: ref
                    .watch(categoryProvider)
                    .valueOrNull
                    ?.where((e) =>
                        e.name == "Kids" ||
                        e.name == "Women" ||
                        e.name == "Men")
                    .map((e) => e.name)
                    .toList() ??
                [],
            FilterTypes.condition:
                ConditionsEnum.values.map((e) => e.simpleName).toList(),
          };

          String? selectedOptions = ref.read(productFilterProvider)[filterType];

          return Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 500),
                child: ListView(
                  shrinkWrap: true,
                  controller: controller,
                  children: filterOptions[filterType]!
                      .map((e) => PreluraCheckBox(
                            isChecked: selectedOptions == e,
                            onChanged: (value) {
                              log("value : $value",
                                  name: "Search product provider");
                              if (selectedOptions == e) {
                                filterNotifier.removeFilter(filterType);
                                selectedOptions = null;
                              } else {
                                filterNotifier.updateFilter(filterType, e);
                                setState(() {
                                  selectedOptions = e;
                                });
                              }

                              Navigator.pop(context);
                            },
                            title: e.replaceAll("_", " "),
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 22, 16, 0),
                child: AppButton(
                    text: "Clear",
                    fontWeight: FontWeight.w600,
                    width: double.infinity,
                    onTap: () {
                      filterNotifier.removeFilter(filterType);
                      Navigator.pop(context);
                      setState(() {
                        selectedOptions = null;
                      });
                    }),
              )
            ],
          );
        },
      );
    }),
  );
}
