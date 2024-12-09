import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/images.dart';

import '../../../core/router/router.gr.dart';
import '../../../res/colors.dart';
import '../../controller/user/user_controller.dart';
import '../widgets/menu_card.dart';
import 'Search Result/provider/filter_provider.dart';
import 'Search Result/view/search_result.dart';

final ActiveSearchProvider = StateProvider<bool>((ref) => false);

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ActiveSearchProvider);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Searchwidget(
                hintText: "Search for items or members",
                obscureText: false,
                shouldReadOnly: false,
                onChanged: (value) {
                  ref.read(ActiveSearchProvider.notifier).state = true;

                  ref.read(searchQueryProvider.notifier).state = value;
                },
                onCancel: () {
                  ref.read(ActiveSearchProvider.notifier).state = false;
                  ref.read(searchFilterProvider.notifier).clearAllFilters();
                },
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true),
            if (state == false) ...[
              addVerticalSpacing(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Categories",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.women,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Women",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.men,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Men",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.kids,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Kids",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.electronics,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Electronics",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.home,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Home",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.entertainment,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Entertainment",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    addHorizontalSpacing(20),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(6)),
                            child: Image.asset(
                              PreluraIcons.petCare,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addVerticalSpacing(4),
                          Text(
                            "Pet Care",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ] else ...[
              LiveSearchPage()
            ]
          ],
        ),
      ),
    );
  }
}
