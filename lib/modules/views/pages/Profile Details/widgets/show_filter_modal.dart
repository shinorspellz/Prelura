import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../controller/product/brands_provider.dart';
import '../../../../controller/product/product_provider.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/bottom_sheet.dart';
import '../view/user_wardrobe.dart';

class FilterModal extends ConsumerStatefulWidget {
  final UserFilterTypes filterType;
  final int? userId;
  static final ScrollController filterScrollController = ScrollController();
  const FilterModal({Key? key, required this.filterType, required this.userId})
      : super(key: key);

  @override
  ConsumerState<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends ConsumerState<FilterModal> {
  String? selectedOption;
  final controller = FilterModal.filterScrollController;

  @override
  void initState() {
    selectedOption = ref.read(filterUserProductProvider)[widget.filterType];
    log(selectedOption.toString());
    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        log("here");
        ref.read(brandsProvider.notifier).fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filterNotifier = ref.watch(filterUserProductProvider.notifier);
    final filterOptions = {
      UserFilterTypes.size: Enum$SizeEnum.values
          .where((e) => e != Enum$SizeEnum.$unknown)
          .map((e) => e.name)
          .toList(),
      UserFilterTypes.style: Enum$StyleEnum.values
          .where((e) => e != Enum$StyleEnum.$unknown)
          .map((e) => e.name)
          .toList(),
      UserFilterTypes.brand: ref
              .watch(userProductGroupingByBrandProvider(
                  (widget.userId ?? 0, Enum$ProductGroupingEnum.BRAND)))
              .valueOrNull
              ?.map((e) => e.name)
              .toList() ??
          [],
      UserFilterTypes.condition:
          ConditionsEnum.values.map((e) => e.simpleName).toList(),
    };

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 500),
      child: ListView(
        controller: controller,
        shrinkWrap: true,
        children: filterOptions[widget.filterType]!
            .map((e) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        filterNotifier.updateFilter(
                            widget.filterType, e, widget.userId!);
                        setState(() {
                          selectedOption = e;
                        });
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            e.replaceAll("_", " "),
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Radio(
                            value: e,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              filterNotifier.updateFilter(
                                  widget.filterType, value!, widget.userId!);
                              setState(() {
                                selectedOption = value;
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                ))
            .toList(),
      ),
    );
  }
}

void showFilterModal(BuildContext context, UserFilterTypes filterType,
    WidgetRef ref, int? userId) {
  VBottomSheetComponent.customBottomSheet(
    context: context,
    child: FilterModal(filterType: filterType, userId: userId),
  );
}

final filterUserProductProvider = StateNotifierProvider<
    FilterUserProductNotifier, Map<UserFilterTypes, String>>((ref) {
  return FilterUserProductNotifier(ref);
});

class FilterUserProductNotifier
    extends StateNotifier<Map<UserFilterTypes, String>> {
  final Ref ref;
  FilterUserProductNotifier(this.ref) : super({});

  // Update filter to only allow one entry in the state
  void updateFilter(UserFilterTypes filterType, String value, int userId) {
    state = {filterType: value}; // Replace state with a single entry
    log(state.toString());
    _updateProductFiltersInput(filterType, value, userId);
    ref.invalidate(searchProductProvider);
  }

  // Clear filter (reset state to empty)
  void clearFilter() {
    state = {};
    log("Filters cleared");
    ref.invalidate(searchProductProvider);
  }

  void _updateProductFiltersInput(
      UserFilterTypes filterType, String value, int userId) {
    // Ensure currentFilters is never null
    final currentFilters =
        ref.read(userProductFilter) ?? Input$ProductFiltersInput();
    if (filterType == UserFilterTypes.brand) {
      final brandId = ref
          .watch(userProductGroupingByBrandProvider(
              (userId ?? 0, Enum$ProductGroupingEnum.BRAND)))
          .valueOrNull
          ?.where((e) => e.name == value)
          .firstOrNull;
      ref.read(userProductFilter.notifier).state =
          Input$ProductFiltersInput(brand: brandId?.id);
      ;
      return;
    }

    if (filterType == UserFilterTypes.size) {
      ref.read(userProductFilter.notifier).state = Input$ProductFiltersInput(
          size: Enum$SizeEnum.values.firstWhere((e) => e.name == value));
      return;
    }
    // // Update only the relevant field in the filter
    // final updatedFilters = currentFilters.copyWith(
    //   brand: filterType == UserFilterTypes.brand
    //       ? int.tryParse(value)
    //       : currentFilters.brand,
    //   size: filterType == UserFilterTypes.size
    //       ? Enum$SizeEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.size!)
    //       : currentFilters.size,
    //   style: filterType == UserFilterTypes.style
    //       ? Enum$StyleEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.style!)
    //       : currentFilters.style,
    //   condition: filterType == UserFilterTypes.condition
    //       ? ConditionsEnum.values.firstWhere((e) => e.name == value,
    //           orElse: () => currentFilters.condition!)
    //       : currentFilters.condition,
    // );

    // // Update the userProductFilterProvider state with updatedFilters
    // ref.read(userProductFilter.notifier).state = updatedFilters;
    // log("ProductFiltersInput updated: ${updatedFilters.toJson()}");
  }
}
