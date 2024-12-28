import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/menu_page.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/modules/views/shimmers/users_shimer.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/profile_card.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../widgets/app_checkbox.dart';
import '../../../widgets/card.dart';
import '../provider/filter_provider.dart';
import '../provider/search_provider.dart';

final dialogFilterStateProvider =
    StateProvider<Map<String, List<String>>>((ref) => {});

enum FilterTypes {
  size('Size'),
  brand('Brand'),
  condition('Condition'),
  category('Category'),
  style('Style');
  // color('Color');

  const FilterTypes(this.simpleName);

  final String simpleName;
}

class LiveSearchPage extends ConsumerWidget {
  const LiveSearchPage({
    super.key,
    this.scrollable = false,
  });
  final bool scrollable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final searchResults = ref.watch(filteredResultsProvider);
    final filters = ref.watch(searchFilterProvider);
    final state = ref.watch(searchFilterProvider.notifier);
    final query = ref.watch(searchQueryProvider).toLowerCase();
    final userAsyncValue = ref.watch(searchProductProvider(query));
    final user = ref.watch(userProvider).valueOrNull;

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Row(
              children: [
                FilterChip(
                  label: const Row(
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Filter'),
                    ],
                  ),
                  onSelected: (_) => state.clearAllFilters(),
                  selected: false,
                  checkmarkColor: Theme.of(context).iconTheme.color,
                  backgroundColor: Colors.transparent, // Transparent background
                  selectedColor:
                      Colors.blue.withOpacity(0.1), // Light blue when selected
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                    side: BorderSide(
                      color: Theme.of(context).dividerColor, // Border color
                      width: 1.5, // Border width
                    ),
                  ),
                ),
                ...FilterTypes.values.map((filter) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: FilterChip(
                      checkmarkColor: filters.containsKey(filter)
                          ? PreluraColors.activeColor
                          : Theme.of(context).iconTheme.color,
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      selectedColor: Colors.blue
                          .withOpacity(0.1), // Light blue when selected
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                        side: BorderSide(
                          color: filters.containsKey(filter)
                              ? PreluraColors.activeColor
                              : Theme.of(context).dividerColor, // Border color
                          width: 1.5, // Border width
                        ),
                      ),
                      label: Text(filter.simpleName),
                      onSelected: (isSelected) {
                        // Show filter dialog to select values
                        _showFilterModal(context, filter, ref);
                      },
                      selected: filters.containsKey(filter),
                    ),
                  );
                }),
              ],
            ),
          ),
          TabBar(tabs: [
            Tab(text: 'Products'),
            Tab(text: 'Members'),
          ]),
          10.verticalSpacing,
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 1.58,
            child: TabBarView(children: [
              userAsyncValue.when(
                  skipLoadingOnRefresh: false,
                  data: (data) => Container(
                        child: data.isEmpty
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                child: const Center(
                                  child: Text('No results found'),
                                ),
                              )
                            : GridView.builder(
                                // shrinkWrap: true,
                                // physics: scrollable ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(8.0),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 0.50,
                                ),
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                    product: data[index],
                                  );
                                },
                              ),
                      ),
                  loading: () => GridShimmer(),
                  error: (error, stack) {
                    log(error.toString(), stackTrace: stack);
                    return Center(child: Text('Error: $error'));
                  }),

              ///Member search

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ref.watch(searchUserProvider(query)).maybeWhen(
                        orElse: () => ListView.separated(
                          itemCount: 20,
                          separatorBuilder: (_, index) => 8.verticalSpacing,
                          itemBuilder: (_, index) => UsersShimmer(),
                        ),
                        data: (users) => ListView.separated(
                          itemCount: users.length,
                          separatorBuilder: (_, index) => 8.verticalSpacing,
                          itemBuilder: (_, index) => GestureDetector(
                            onTap: () {
                              if (user?.username == users[index].username) {
                                context.router.push(ProfileNavigationRoute());
                              } else {
                                context.router.push(ProfileDetailsRoute(
                                    username: users[index].username));
                              }
                            },
                            child: ProfileCardWidget(
                              user: users[index],
                            ),
                          ),
                        ),
                      ))
            ]),
          )
        ],
      ),
    );
  }

  void _showFilterModal(
      BuildContext context, FilterTypes filterType, WidgetRef ref) {
    final filterNotifier = ref.watch(searchFilterProvider.notifier);
    // final List<String> selectedOptions =
    //     ref.watch(searchFilterProvider)[filterType] ?? [];
    // final tempSelections = [...selectedOptions];
    // print(tempSelections);

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
      FilterTypes.category: ref
              .watch(categoryProvider)
              .valueOrNull
              ?.map((e) => e.name)
              .toList() ??
          [],
      FilterTypes.condition:
          ConditionsEnum.values.map((e) => e.simpleName).toList(),
      // FilterTypes.color: ref.watch(colorsProvider).keys.toList(),
    };
    String? selectedOptions = ref.read(searchFilterProvider)[filterType];

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

    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return Consumer(builder: (context, WidgetRef reff, s) {
    //         var selectedOptions = List<String>.from(reff.watch(searchFilterProvider)[filterType] ?? []);

    //         return AlertDialog(
    //             title: Text('Select $filterType'),
    //             content: SingleChildScrollView(
    //               child: Column(
    //                 children: filterOptions[filterType]!.map((option) {
    //                   return PreluraCheckBox(
    //                     title: option,
    //                     onChanged: (isChecked) {
    //                       if (isChecked) {
    //                         filterNotifier.updateFilter(filterType, option);
    //                       } else {
    //                         filterNotifier.removeFilter(filterType, option);
    //                       }
    //                     },
    //                     isChecked: selectedOptions.contains(option),
    //                   );
    //                 }).toList(),
    //               ),
    //             ));
    //       });
    //     });
  }
}
