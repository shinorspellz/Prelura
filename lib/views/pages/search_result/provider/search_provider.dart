import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

import '../../../../controller/product/brands_provider.dart';
import '../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_checkbox.dart';
import '../../../widgets/bottom_sheet.dart';
import '../../profile_details/widgets/show_filter_modal.dart';

final Map<FilterTypes, Input$ProductFiltersInput> filterServerMapping = {
  FilterTypes.brand: Input$ProductFiltersInput()
};

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
  void updateFilter(FilterTypes filterType, String value) {
    // state = {filterType: value}; // Replace state with a single entry
    // log(state.toString());
    // _updateProductFiltersInput(filterType, value, userId);
    state = state..[filterType] = value;
    ref.invalidate(userProduct);
  }

  void removeFilter(FilterTypes filterType, String value) {
    state.remove(filterType);
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
    final query = ref.read(filteredProductSearchQueryProvider);
    // Update the local filter state
    state = state..[filterType] = value;

    log(filterType.toString());
    log(value);
    final providerFilter = ref.read(filteredProductProvider(query).notifier);
    log(providerFilter.currentFilter!.toJson().toString(),
        name: ' filteredProducts filter in search provider ');

    if (filterType == FilterTypes.brand) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        brand: filterType == FilterTypes.brand
            ? int.parse(ref
                .read(brandsProvider)
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

    // if (filterType == FilterTypes.size) {
    //   final updatedFilter = providerFilter.currentFilter?.copyWith(
    //     size: filterType == FilterTypes.size
    //         ? Enum$SizeEnum.values.firstWhere((e) => e.name == value)
    //         : providerFilter.currentFilter?.size,
    //   );
    //
    //   providerFilter.updateFilter(updatedFilter!);
    // }

    if (filterType == FilterTypes.style) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        style: filterType == FilterTypes.style
            ? Enum$StyleEnum.values.where((e) => e.name == value).firstOrNull
            : providerFilter.currentFilter?.style,
      );
      providerFilter.updateFilter(updatedFilter!);
      return;
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

      return;
    }

    if (FilterTypes.price == filterType) {
      final maxPrice = value?.split(' ').last;
      final minPrice = value?.split(' ').first;
      if (minPrice == null || minPrice.isEmpty) {
        final updatedFilter = providerFilter.currentFilter?.copyWith(
          maxPrice: maxPrice != null && maxPrice.isNotEmpty
              ? double.parse(maxPrice ?? "0")
              : providerFilter.currentFilter?.maxPrice ?? 0,
          minPrice: 0,
        );
        providerFilter.updateFilter(updatedFilter!);
        return;
      }
      if (maxPrice == null || maxPrice.isEmpty) {
        final updatedFilter = providerFilter.currentFilter?.copyWith(
          minPrice: minPrice != null && minPrice.isNotEmpty
              ? double.parse(minPrice)
              : providerFilter.currentFilter?.minPrice ?? 0,
        );
        providerFilter.updateFilter(updatedFilter!);
        return;
      }

      log(value, name: 'price in search provider');
      final updatedFilter = providerFilter.currentFilter?.copyWith(
        maxPrice: maxPrice != null && maxPrice.isNotEmpty
            ? double.parse(maxPrice ?? "0")
            : providerFilter.currentFilter?.maxPrice ?? null,
        minPrice: minPrice != null && minPrice.isNotEmpty
            ? double.parse(minPrice ?? "0")
            : providerFilter.currentFilter?.minPrice ?? 0,
      );
      providerFilter.updateFilter(updatedFilter!);
      return;
    }

    if (FilterTypes.category == filterType) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
          parentCategory: filterType == FilterTypes.category
              ? Enum$ParentCategoryEnum.values
                  .where((e) => e.name.toLowerCase() == value.toLowerCase())
                  .firstOrNull
              : providerFilter.currentFilter?.parentCategory);

      providerFilter.updateFilter(updatedFilter!);
      return;
    }

    if (FilterTypes.color == filterType) {
      final updatedFilter = providerFilter.currentFilter?.copyWith(
          colors: filterType == FilterTypes.color
              ? [
                  ref
                      .read(colorsProvider)
                      .entries
                      ?.where((e) => e.key == value)
                      .firstOrNull
                      ?.key
                ]
              : providerFilter.currentFilter?.colors);

      providerFilter.updateFilter(updatedFilter!);

      return;
    }
  }

  void removeFilter(FilterTypes filterType, BuildContext context) {
    state.remove(filterType);
    final query = ref.read(filteredProductSearchQueryProvider);
    final providerFilter = ref.read(filteredProductProvider(query).notifier);
    final selectedProvider = ref.read(selectedFilteredProductProvider);
    final currentProvider = providerFilter.currentFilter;
    final routeName = context.router.current.name;

    final brandFilter = state.entries
        .where((e) => e.key == FilterTypes.brand)
        .firstOrNull
        ?.value;
    final conditionFilter = state.entries
        .where((e) => e.key == FilterTypes.condition)
        .firstOrNull
        ?.value;
    final styleFilter = state.entries
        .where((e) => e.key == FilterTypes.style)
        .firstOrNull
        ?.value;
    final parentCategoryFilter = state.entries
        .where((e) => e.key == FilterTypes.gender)
        .firstOrNull
        ?.value;
    final colorFilter = state.entries
        .where((e) => e.key == FilterTypes.color)
        .firstOrNull
        ?.value;
    final minPriceFilter = state.entries
        .where((e) => e.key == FilterTypes.price)
        .firstOrNull
        ?.value
        .split(" ")
        .first;
    final maxPriceFilter = state.entries
        .where((e) => e.key == FilterTypes.price)
        .firstOrNull
        ?.value
        .split(" ")
        .last;

    final brand = ref
        .watch(brandsProvider)
        .valueOrNull
        ?.where((e) => e.name == brandFilter)
        .firstOrNull;

    final category = Enum$ParentCategoryEnum.values
        .where((e) => e.name == parentCategoryFilter)
        .firstOrNull;
    final condition = ConditionsEnum.values
        .where((e) => e.name == conditionFilter)
        .firstOrNull;
    final style =
        Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

    final color = ref
        .watch(colorsProvider)
        .entries
        .where((e) => e.key == colorFilter)
        .firstOrNull
        ?.key;

    log(selectedProvider.toJson().toString(),
        name: 'selectedProvider in search provider');
    log(context.router.current.name, name: 'current route in search provider');

    final filter = Input$ProductFiltersInput(
        parentCategory: routeName == "FilterProductRoute"
            ? currentProvider?.parentCategory
            : category,
        maxPrice: routeName == "ProductPriceFilterRoute"
            ? currentProvider?.maxPrice
            : maxPriceFilter != null && maxPriceFilter.isNotEmpty
                ? double.parse(maxPriceFilter ?? "0")
                : null,
        minPrice: minPriceFilter != null && minPriceFilter.isNotEmpty
            ? double.parse(minPriceFilter ?? "0")
            : 0,
        brand: currentProvider?.brand,
        condition: condition,
        style: routeName == "ChristmasFilteredProductRoute"
            ? currentProvider?.style
            : style,
        discountPrice: currentProvider?.discountPrice,
        hashtags: currentProvider?.hashtags,
        colors: color != null ? [color] : []);

    providerFilter.updateFilter(filter);
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
      if (filterType == FilterTypes.price) {
        Navigator.pop(context);
        Future.microtask(() {
          showPriceDialog(context, ref, filterNotifier, context.mounted);
        });

        return SizedBox.shrink();
      }
      return Consumer(
        builder: (context, ref, _) {
          // Recompute `filterOptions` inside the `Consumer`
          final filterOptions = {
            // FilterTypes.size: Enum$SizeEnum.values
            //     .where((e) => e != Enum$SizeEnum.$unknown)
            //     .map((e) => e.name)
            //     .toList(),
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
                    ?.map((e) => e.name)
                    .toList() ??
                [],
            FilterTypes.condition:
                ConditionsEnum.values.map((e) => e.simpleName).toList(),
            FilterTypes.color:
                ref.read(colorsProvider).entries.map((e) => e.key).toList() ??
                    [],
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
                            colorName: filterType == FilterTypes.color
                                ? ref
                                    .read(colorsProvider)
                                    .entries
                                    .where((color) => color.key == e)
                                    .firstOrNull
                                    ?.value
                                : null,
                            isChecked: selectedOptions == e,
                            onChanged: (value) {
                              log("value : $value",
                                  name: "Search product provider");
                              if (selectedOptions == e) {
                                filterNotifier.removeFilter(
                                    filterType, context);
                                selectedOptions = "";
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
                    isDisabled: selectedOptions == null,
                    onTap: () {
                      filterNotifier.removeFilter(filterType, context);
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
