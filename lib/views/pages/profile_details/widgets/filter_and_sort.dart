import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../res/colors.dart';
import '../../../../res/images.dart';
import '../../../../res/render_svg.dart';
import '../../../widgets/bottom_sheet.dart';
import 'show_filter_modal.dart';

class FilterAndSort extends ConsumerWidget {
  const FilterAndSort(
      {super.key, required this.userId, required this.username});
  final int? userId;
  final String? username;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = context.isDarkMode
        ? PreluraColors.jobDetailGrey.withOpacity(0.7)
        : PreluraColors.black.withOpacity(0.6);
    final fontWeight = FontWeight.w600;
    final selectedColor = context.isDarkMode
        ? PreluraColors.greyColorButton
        : PreluraColors.black;
    final selectedFontWeight =
        context.isDarkMode ? fontWeight : FontWeight.w600;
    final sortValue = ref.watch(userProductSort).name;
    final sortList = Enum$SortEnum.values;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () {
              VBottomSheetComponent.actionBottomSheet(
                customHeader: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Filter",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                customFooter: (context) => AppButton(
                  width: MediaQuery.sizeOf(context).width,
                  isDisabled: ref.watch(filterUserProductProvider).isEmpty,
                  onTap: ref.watch(filterUserProductProvider).isNotEmpty
                      ? () {
                          ref
                              .read(filterUserProductProvider.notifier)
                              .clearFilter();
                          Navigator.pop(context);
                        }
                      : null,
                  text: 'Clear',
                ),
                context: context,
                actions: [
                  ...FilterTypes.values
                      .where((e) => e.simpleName.toLowerCase() != "category")
                      .map((e) {
                    return VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);
                        showFilterModal(context, e, ref, userId, username);
                      },
                      title: e.simpleName,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color:
                            ref.watch(filterUserProductProvider).containsKey(e)
                                ? selectedColor
                                : color,
                        fontWeight:
                            ref.watch(filterUserProductProvider).containsKey(e)
                                ? selectedFontWeight
                                : fontWeight,
                      ),
                    );
                  }),
                  VBottomSheetItem(
                    onTap: (context) {},
                    title: "Material",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: color,
                      fontWeight: fontWeight,
                    ),
                  ),

                  // VBottomSheetItem(onTap: (context){}, title: "Category"),
                ],
              );
            },
            child: Row(children: [
              Text(
                "Filter",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: PreluraColors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(),
                    ),
              ),
              4.horizontalSpacing,
              // RenderSvg(svgPath: PreluraIcons.fil, svgHeight: 18, svgWidth:18)
              RenderSvg(
                  svgPath: PreluraIcons.filter_icon_svg,
                  color: PreluraColors.activeColor,
                  svgHeight: 16,
                  svgWidth: 16)
            ]),
          ),
          GestureDetector(
            onTap: () {
              VBottomSheetComponent.actionBottomSheet(
                context: context,
                customHeader: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sort",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                customFooter: (context) => AppButton(
                  width: MediaQuery.sizeOf(context).width,
                  onTap: () {
                    ref.invalidate(userProductSort);
                    Navigator.pop(context);
                  },
                  text: 'Clear',
                ),
                actions: [
                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);
                      },
                      title: "Relevance",
                      textColor: color,
                      textWeight: fontWeight),

                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);

                        ref.read(userProductSort.notifier).state =
                            Enum$SortEnum.NEWEST;
                      },
                      title: "Newest First",
                      textColor: sortValue == Enum$SortEnum.NEWEST.name
                          ? selectedColor
                          : color,
                      textWeight: sortValue == Enum$SortEnum.NEWEST.name
                          ? selectedFontWeight
                          : fontWeight),
                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);

                        ref.read(userProductSort.notifier).state =
                            Enum$SortEnum.PRICE_ASC;
                      },
                      title: "Price Ascending",
                      textColor: sortValue == Enum$SortEnum.PRICE_ASC.name
                          ? selectedColor
                          : color,
                      textWeight: sortValue == Enum$SortEnum.PRICE_ASC.name
                          ? selectedFontWeight
                          : fontWeight),
                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);
                        ref.read(userProductSort.notifier).state =
                            Enum$SortEnum.PRICE_DESC;
                      },
                      title: "Price Descending",
                      textColor: sortValue == Enum$SortEnum.PRICE_DESC.name
                          ? selectedColor
                          : color,
                      textWeight: sortValue == Enum$SortEnum.PRICE_DESC.name
                          ? selectedFontWeight
                          : fontWeight),

                  // VBottomSheetItem(onTap: (context){}, title: "Category"),
                ],
              );
            },
            child: Row(children: [
              Text(
                getActiveSortName(ref.read(userProductSort.notifier).state),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: PreluraColors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(),
                    ),
              ),
              2.horizontalSpacing,
              RenderSvg(
                  svgPath: PreluraIcons.sort_icon_svg,
                  color: PreluraColors.activeColor,
                  svgHeight: 16,
                  svgWidth: 16)
            ]),
          )
        ])); // Hello world
  }

  String getActiveSortName(Enum$SortEnum sortValue) {
    if (sortValue.name == Enum$SortEnum.NEWEST.name) {
      return "Newest First";
    }
    if (sortValue.name == Enum$SortEnum.PRICE_DESC.name) {
      return "Price Descending";
    }

    return "Price Ascending";
  }
}
