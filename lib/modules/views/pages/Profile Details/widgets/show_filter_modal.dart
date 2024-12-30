import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';

import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../../controller/product/brands_provider.dart';
import '../../../../controller/product/product_provider.dart';
import '../../../../model/product/product_model.dart';
import '../../../widgets/bottom_sheet.dart';
import '../view/user_wardrobe.dart';

void showFilterModal(
    BuildContext context, UserFilterTypes filterType, WidgetRef ref) {
  final filterNotifier = ref.watch(filterUserProductProvider.notifier);
  // final List<String> selectedOptions =
  //     ref.watch(searchFilterProvider)[filterType] ?? [];
  // final tempSelections = [...selectedOptions];
  // print(tempSelections);

  final filterOptions = {
    UserFilterTypes.size: Enum$SizeEnum.values
        .where((e) => e != Enum$SizeEnum.$unknown)
        .map((e) => e.name)
        .toList(),
    UserFilterTypes.style: Enum$StyleEnum.values
        .where((e) => e != Enum$StyleEnum.$unknown)
        .map((e) => e.name)
        .toList(),
    UserFilterTypes.brand:
        ref.watch(brandsProvider).valueOrNull?.map((e) => e.name).toList() ??
            [],
    UserFilterTypes.condition:
        ConditionsEnum.values.map((e) => e.simpleName).toList(),
    // FilterTypes.color: ref.watch(colorsProvider).keys.toList(),
  };
  String? selectedOptions = ref.read(filterUserProductProvider)[filterType];

  VBottomSheetComponent.customBottomSheet(
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
                      .map((e) => Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  filterNotifier.updateFilter(filterType, e);
                                  setState(() {
                                    selectedOptions = e;
                                  });

                                  Navigator.pop(context);
                                },
                                child: Row(
                                  children: [
                                    Text(e.replaceAll("_", " "),
                                        style: context.textTheme.bodyLarge
                                            ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Spacer(),
                                    Radio(
                                        value: e,
                                        groupValue:
                                            selectedOptions, //selectedOptions,
                                        onChanged: (value) {
                                          filterNotifier.updateFilter(
                                              filterType, value!);
                                          setState(() {
                                            selectedOptions = value;
                                          });

                                          Navigator.pop(context);
                                        }),
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          ))
                      .toList(),
                ),
              ));
    }),
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
  void updateFilter(UserFilterTypes filterType, String value) {
    state = {filterType: value}; // Replace state with a single entry
    log(state.toString());
    ref.invalidate(searchProductProvider);
  }

  // Clear filter (reset state to empty)
  void clearFilter() {
    state = {};
    log("Filters cleared");
    ref.invalidate(searchProductProvider);
  }
}
