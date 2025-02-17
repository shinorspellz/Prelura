import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';
import 'package:prelura_app/views/widgets/error_placeholder.dart';

import '../../../controller/product/product_provider.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/SearchWidget.dart';
import '../../widgets/filters_options.dart';
import '../profile_details/widgets/no_product_widget.dart';
import '../search_result/provider/search_provider.dart';
import '../search_result/view/search_result.dart';
import 'filters.dart';

@RoutePage()
class FilterProductPage extends StatefulHookConsumerWidget {
  const FilterProductPage(
      {super.key,
      required this.title,
      required this.parentCategory,
      this.customBrand});
  final String? title;
  final Enum$ParentCategoryEnum? parentCategory;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductFilterPageState createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends ConsumerState<FilterProductPage>
    with AutoRouteAware {
  final controller = FilterProductPage.scrollController;
  final _filter = Input$ProductFiltersInput();

  @override
  void dispose() {
    super.dispose();
    HelperFunction.genRef!
        .read(filteredProductSearchQueryProvider.notifier)
        .state = "";
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      log("here in the microstask");
      ref.read(filteredProductSearchQueryProvider.notifier).state = "";
    });
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        final filters = ref.read(productFilterProvider);
        final filter = getFilters(
            excludedFilter: FilterTypes.category,
            value: widget.parentCategory,
            ref: ref,
            filterType: filters);
        ref
            .read(filteredProductProvider((filter, searchQuery)).notifier)
            .fetchMoreData(context);
      }
    });
  }

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filters = ref.watch(productFilterProvider);
    final filter = getFilters(
        excludedFilter: FilterTypes.category,
        value: widget.parentCategory,
        ref: ref,
        filterType: filters);

    // useEffect(
    //   () {
    //     log("::::: You called me ::::");
    //     WidgetsBinding.instance.addPostFrameCallback((_) {
    //       ref.read(selectedFilteredProductProvider.notifier).state =
    //           Input$ProductFiltersInput(category: widget.id);
    //       ref.invalidate(filteredProductProvider(searchQuery));
    //     });
    //     return null;
    //   },
    // );

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: widget.title),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref
              .refresh(filteredProductProvider((filter, searchQuery)).future);
          if (!mounted) return; // Prevent state updates after unmounting
          setState(() {});
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 15),
                          child: Searchwidget(
                            padding: EdgeInsets.zero,
                            obscureText: false,
                            shouldReadOnly: false,
                            hintText: "Search for items",
                            enabled: true,
                            showInputBorder: true,
                            autofocus: false,
                            cancelButton: true,
                            onChanged: (val) {
                              searchQuery = val;

                              setState(() {});
                            },
                            onCancel: () {
                              searchQuery = "";
                              setState(() {});
                            },
                          ),
                        ),
                        FiltersOptions(
                            excludedFilterTypes: [
                              FilterTypes.category,
                            ],
                            onTap: () {
                              ref
                                      .read(selectedFilteredProductProvider
                                          .notifier)
                                      .state =
                                  Input$ProductFiltersInput(
                                      parentCategory: widget.parentCategory);
                            }),
                      ],
                    ),
                  )),
                ),
                ref
                    .watch(filteredProductProvider((filter, searchQuery)))
                    .maybeWhen(
                      skipLoadingOnReload: true,
                      error: (e, _) {
                        return SliverToBoxAdapter(
                          child: ErrorPlaceholder(
                            error: "An error occurred",
                            onTap: () {
                              // log(e.toString(), stackTrace: _);
                              ref.refresh(filteredProductProvider(
                                  (filter, searchQuery)));
                            },
                          ),
                        );
                      },
                      loading: () => SliverToBoxAdapter(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GridShimmer(),
                      )),
                      data: (products) {
                        return products.isEmpty
                            ? SliverToBoxAdapter(
                                child: NoProductWidget(
                                  height:
                                      MediaQuery.of(context).size.height * 0.65,
                                ),

                                // Container(
                                //   height: MediaQuery.of(context).size.height *
                                //       0.7,
                                //   child: Center(
                                //     child: Text(
                                //       "No products found",
                                //       style: Theme.of(context)
                                //           .textTheme
                                //           .bodyLarge,
                                //     ),
                                //   ),
                                // ),
                              )
                            : SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                sliver: SliverGrid.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 0.50,
                                  ),
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(
                                        product: products[index]);
                                  },
                                ),
                              );
                      },
                      orElse: () => SliverToBoxAdapter(child: Container()),
                    ),
                if (ref
                        .watch(filteredProductProvider((filter, searchQuery)))
                        .valueOrNull
                        ?.isNotEmpty ==
                    true)
                  if (ref
                      .watch(filteredProductProvider((filter, searchQuery))
                          .notifier)
                      .canLoadMore())
                    if (!ref
                        .watch(filteredProductProvider((filter, searchQuery)))
                        .isLoading)
                      const SliverToBoxAdapter(
                        child: PaginationLoadingIndicator(),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StaticSliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StaticSliverDelegate({required this.child});

  @override
  double get minExtent => 116.8;

  @override
  double get maxExtent => 116.8;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
