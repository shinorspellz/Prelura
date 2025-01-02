import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';

import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../controller/product/brands_provider.dart';
import '../../../../controller/product/product_provider.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/bottom_sheet.dart';
import '../view/user_wardrobe.dart';

class FilterModal extends ConsumerStatefulWidget {
  final FilterTypes filterType;
  final int? userId;
  static final ScrollController filterScrollController = ScrollController();
  const FilterModal({super.key, required this.filterType, required this.userId});

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
      FilterTypes.size: Enum$SizeEnum.values.where((e) => e != Enum$SizeEnum.$unknown).map((e) => e.name).toList(),
      FilterTypes.style: Enum$StyleEnum.values.where((e) => e != Enum$StyleEnum.$unknown).map((e) => e.name).toList(),
      FilterTypes.brand: ref.watch(userProductGroupingByBrandProvider((widget.userId ?? 0, Enum$ProductGroupingEnum.BRAND))).valueOrNull?.map((e) => e.name).toList() ?? [],
      FilterTypes.condition: ConditionsEnum.values.map((e) => e.simpleName).toList(),
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
                        filterNotifier.updateFilter(widget.filterType, e);
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
                              filterNotifier.updateFilter(widget.filterType, value!);
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

void showFilterModal(BuildContext context, FilterTypes filterType, WidgetRef ref, int? userId) {
  VBottomSheetComponent.customBottomSheet(
    context: context,
    child: FilterModal(filterType: filterType, userId: userId),
  );
}
