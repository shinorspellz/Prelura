import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';

import '../../../controller/product/brands_provider.dart';
import '../../../controller/product/product_provider.dart';
import '../../../model/product/product_model.dart';

Input$ProductFiltersInput getFilters(
    {FilterTypes? excludedFilter,
    required dynamic value,
    bool? discountedPrice = null,
    String? hashtags = null,
    required WidgetRef ref,
    String? customBrand = null,
    required Map<FilterTypes, String> filterType}) {
  final brandFilter = filterType.entries
      .where((e) => e.key == FilterTypes.brand)
      .firstOrNull
      ?.value;
  final conditionFilter = filterType.entries
      .where((e) => e.key == FilterTypes.condition)
      .firstOrNull
      ?.value;
  final styleFilter = filterType.entries
      .where((e) => e.key == FilterTypes.style)
      .firstOrNull
      ?.value;
  final parentCategoryFilter = filterType.entries
      .where((e) => e.key == FilterTypes.category)
      .firstOrNull
      ?.value;
  final colorFilter = filterType.entries
      .where((e) => e.key == FilterTypes.color)
      .firstOrNull
      ?.value;
  final minPriceFilter = filterType.entries
      .where((e) => e.key == FilterTypes.price)
      .firstOrNull
      ?.value
      .split(" ")
      .first;
  final maxPriceFilter = filterType.entries
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
      .where((e) => e.name.toLowerCase() == parentCategoryFilter?.toLowerCase())
      .firstOrNull;
  final condition = ConditionsEnum.values
      .where((e) => e.simpleName == conditionFilter)
      .firstOrNull;
  final style =
      Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

  final color = ref
      .watch(colorsProvider)
      .entries
      .where((e) => e.key == colorFilter)
      .firstOrNull
      ?.key;

  log("brandFilter : ${brandFilter}");
  log("brand : ${brand}");

  final filter = Input$ProductFiltersInput(
      parentCategory: excludedFilter == FilterTypes.category ? value : category,
      maxPrice: excludedFilter == FilterTypes.price
          ? value
          : maxPriceFilter != null && maxPriceFilter.isNotEmpty
              ? double.parse(maxPriceFilter ?? "0")
              : null,
      minPrice: minPriceFilter != null && minPriceFilter.isNotEmpty
          ? double.parse(minPriceFilter ?? "0")
          : 0,
      brand: excludedFilter == FilterTypes.brand ? value : null,
      condition: condition,
      style: excludedFilter == FilterTypes.style ? value : style,
      discountPrice: discountedPrice,
      customBrand: customBrand,
      hashtags: hashtags != null ? [hashtags] : null,
      colors: color != null ? [color] : []);

  log("filter: $filter", name: "filters in the filtered products");

  return filter;
}
