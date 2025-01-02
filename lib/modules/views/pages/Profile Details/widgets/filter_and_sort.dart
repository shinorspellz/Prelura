import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/ui_constants.dart';

import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../../../res/render_svg.dart';
import '../../../../controller/product/product_provider.dart';
import '../../../widgets/bottom_sheet.dart';
import '../view/user_wardrobe.dart';
import 'show_filter_modal.dart';

class FilterAndSort extends ConsumerWidget {
  const FilterAndSort({super.key, required this.userId});
  final int? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = PreluraColors.jobDetailGrey.withOpacity(0.7);
    final fontWeight = FontWeight.w400;
    final sortValue = ref.watch(userProductSort).name;
    final sortList = Enum$SortEnum.values;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () {
              VBottomSheetComponent.actionBottomSheet(
                customHeader: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Filter",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ),
                context: context,
                actions: [
                  ...FilterTypes.values.map((e) {
                    return VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);
                        showFilterModal(context, e, ref, userId);
                      },
                      title: e.simpleName,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: ref.watch(filterUserProductProvider).containsKey(e) ? Colors.white : color,
                        fontWeight: ref.watch(filterUserProductProvider).containsKey(e) ? FontWeight.w900 : fontWeight,
                      ),
                    );
                  }),
                  VBottomSheetItem(
                    onTap: (Context) {},
                    title: "Colour",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: color,
                      fontWeight: fontWeight,
                    ),
                  ),
                  VBottomSheetItem(
                    onTap: (Context) {},
                    title: "Price",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: color,
                      fontWeight: fontWeight,
                    ),
                  ),
                  VBottomSheetItem(
                    onTap: (Context) {},
                    title: "Material",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: color,
                      fontWeight: fontWeight,
                    ),
                  ),

                  // VBottomSheetItem(onTap: (Context){}, title: "Category"),
                ],
              );
            },
            child: Row(children: [
              Text(
                "Filter",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: PreluraColors.grey,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              4.horizontalSpacing,
              // RenderSvg(svgPath: PreluraIcons.fil, svgHeight: 18, svgWidth:18)
              RenderSvg(svgPath: PreluraIcons.filter_icon_svg, color: PreluraColors.activeColor, svgHeight: 16, svgWidth: 16)
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
                          fontWeight: FontWeight.w900,
                        ),
                  ),
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

                        ref.read(userProductSort.notifier).state = Enum$SortEnum.NEWEST;
                      },
                      title: "Newest First",
                      textColor: sortValue == Enum$SortEnum.NEWEST.name ? PreluraColors.greyColorButton : color,
                      textWeight: fontWeight),
                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);

                        ref.read(userProductSort.notifier).state = Enum$SortEnum.PRICE_DESC;
                      },
                      title: "Price Ascending",
                      textColor: sortValue == Enum$SortEnum.PRICE_DESC.name ? PreluraColors.greyColorButton : color,
                      textWeight: fontWeight),
                  VBottomSheetItem(
                      onTap: (context) {
                        Navigator.pop(context);
                        ref.read(userProductSort.notifier).state = Enum$SortEnum.PRICE_ASC;
                      },
                      title: "Price Desending",
                      textColor: sortValue == Enum$SortEnum.PRICE_ASC.name ? PreluraColors.greyColorButton : color,
                      textWeight: fontWeight),

                  // VBottomSheetItem(onTap: (Context){}, title: "Category"),
                ],
              );
            },
            child: Row(children: [
              Text(
                "Sort",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: PreluraColors.grey,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              2.horizontalSpacing,
              RenderSvg(svgPath: PreluraIcons.sort_icon_svg, color: PreluraColors.activeColor, svgHeight: 16, svgWidth: 16)
            ]),
          )
        ])); // Hello world
  }
}
