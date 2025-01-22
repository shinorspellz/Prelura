import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../controller/product/brands_provider.dart';
import '../../../../controller/product/product_provider.dart';
import '../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../res/colors.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/bottom_sheet.dart';
import '../../../widgets/custom_widget.dart';
import '../../../widgets/price_field.dart';

class FilterModal extends ConsumerStatefulWidget {
  final FilterTypes filterType;
  final int? userId;
  final String? username;
  static final ScrollController filterScrollController = ScrollController();
  const FilterModal(
      {super.key,
      required this.filterType,
      required this.userId,
      required this.username});

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

  void updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterNotifier = ref.watch(filterUserProductProvider.notifier);
    if (widget.filterType == FilterTypes.price) {
      Navigator.pop(context);
      Future.microtask(() {
        showPriceDialog(context, ref, filterNotifier, mounted);
      });
      return const SizedBox.shrink();
    }
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
              .watch(userProductGroupingByBrandProvider(
                  (widget.userId ?? 0, Enum$ProductGroupingEnum.BRAND)))
              .valueOrNull
              ?.map((e) => e.name)
              .toList() ??
          [],
      FilterTypes.category: ref
              .watch(
                  userProductGroupingByCategoryProvider((widget.userId ?? 0)))
              .valueOrNull
              ?.map((e) => e.name)
              .toList() ??
          [],

      FilterTypes.condition:
          ConditionsEnum.values.map((e) => e.simpleName).toList(),

      FilterTypes.gender: Enum$ParentCategoryEnum.values
          .where((category) =>
              {"men", "women"}.contains(category.name.toLowerCase()))
          .map((category) => category.name),

      FilterTypes.color:
          ref.read(colorsProvider).entries.map((e) => e.key).toList() ?? [],
    };

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 500),
      child: ListView(
        controller: controller,
        shrinkWrap: true,
        children: filterOptions[widget.filterType]!
            .map(
              (e) => PreluraCheckBox(
                colorName: widget.filterType == FilterTypes.color
                    ? ref
                        .read(colorsProvider)
                        .entries
                        .where((color) => color.key == e)
                        .firstOrNull
                        ?.value
                    : null,
                title: e.replaceAll("_", " "),
                isChecked: selectedOption == e,
                onChanged: (value) {
                  if (selectedOption == e) {
                    log(e, name: "profile filter");
                    filterNotifier.removeFilter(widget.filterType, e);
                    setState(() {
                      selectedOption = null;
                    });
                    Navigator.pop(context);
                    return;
                  }

                  filterNotifier.updateFilter(widget.filterType, e);
                  setState(() {
                    selectedOption = e;
                  });
                  Navigator.pop(context);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

void showFilterModal(BuildContext context, FilterTypes filterType,
    WidgetRef ref, int? userId, String? username) {
  VBottomSheetComponent.customBottomSheet(
    context: context,
    removeSidePadding: true,
    child:
        FilterModal(filterType: filterType, userId: userId, username: username),
  );
}

Future<dynamic> showPriceDialog(
    BuildContext context, WidgetRef ref, filterNotifier, bool mounted) {
  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();
  String? errorMessage;

  final priceFilter = filterNotifier.state[FilterTypes.price] as String?;
  if (priceFilter != null) {
    final prices = priceFilter.split(" ");
    if (prices.isNotEmpty) {
      minPriceController.text = prices[0];
      if (prices.length > 1) {
        maxPriceController.text = prices[1];
      }
    }
  }

  return showCustomDialog(context, child: Builder(builder: (context) {
    void validateAndFilter() {
      try {
        final minPriceText = minPriceController.text;
        final maxPriceText = maxPriceController.text;

        // Check if both fields are empty
        if (minPriceText.isEmpty && maxPriceText.isEmpty) {
          errorMessage = "Please enter at least one price value.";
        } else {
          final minPrice = double.tryParse(minPriceText) ?? 0;
          final maxPrice = double.tryParse(maxPriceText) ?? double.infinity;

          // Validation rules
          if (minPrice < 0 || maxPrice < 0) {
            errorMessage = "Price values cannot be negative.";
          } else if (minPriceText.isNotEmpty &&
              maxPriceText.isNotEmpty &&
              minPrice > maxPrice) {
            errorMessage =
                "Minimum price cannot be greater than maximum price.";
          } else {
            errorMessage = null; // Clear error if valid

            log(
              [minPriceText, maxPriceText].join(" "),
            );
            filterNotifier.updateFilter(
                FilterTypes.price, [minPriceText, maxPriceText].join(" "));

            // Safely pop the dialog
            if (mounted) {
              Navigator.pop(context);
            }
            return;
          }
        }
      } catch (e, stack) {
        log(e.toString());
        log(stack.toString());
      }

      // Show error if validation fails
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage ?? "Invalid input."),
            backgroundColor: PreluraColors.primaryColor,
          ),
        );
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 26),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          PriceFieldWidget(
            width: 63.w,
            label: "Min. Price",
            textController: minPriceController,
          ),
          12.verticalSpacing,
          PriceFieldWidget(
            width: 63.w,
            label: "Max. Price",
            textController: maxPriceController,
          ),
          if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          24.verticalSpacing,
          AppButton(
            onTap: validateAndFilter,
            text: "Filter",
            width: 130,
            height: 45,
          )
        ],
      ),
    );
  }));
}
