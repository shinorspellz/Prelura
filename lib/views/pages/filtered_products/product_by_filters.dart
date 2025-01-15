import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../controller/product/product_provider.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/SearchWidget.dart';
import '../../widgets/empty_screen_placeholder.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/filters_options.dart';
import '../search_result/provider/search_provider.dart';
import '../search_result/view/search_result.dart';

@RoutePage()
class FilterProductPage extends StatefulHookConsumerWidget {
  const FilterProductPage(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductFilterPageState createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends ConsumerState<FilterProductPage>
    with AutoRouteAware {
  final controller = FilterProductPage.scrollController;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      log("here in the microstask");
      // Ensure the widget is still mounted
      ref.read(selectedFilteredProductProvider.notifier).state =
          Input$ProductFiltersInput(category: widget.id);

      ref.refresh(filteredProductProvider(searchQuery));
    });
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref.read(filteredProductProvider(searchQuery).notifier).fetchMoreData();
      }
    });
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
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

    final filters = ref.watch(productFilterProvider);
    final state = ref.watch(productFilterProvider.notifier);
    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: widget.title),
      //   body: productProvider.when(
      //     data: (products) => GridView.builder(
      //       padding: const EdgeInsets.all(10),
      //       controller: scrollController,
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //         childAspectRatio: 0.52,
      //       ),
      //       itemCount: products.length,
      //       itemBuilder: (context, index) {
      //         if (index < products.length) {
      //           return ProductCard(
      //             product: products[index],
      //             isSimilar: true,
      //           );
      //         } else {
      //           if (productNotifier.canLoadMore()) {
      //             if (productProvider.isLoading) {
      //               return const PaginationLoadingIndicator();
      //             }
      //           }
      //         }
      //       },
      //     ),
      //     loading: () => GridShimmer(),
      //     error: (err, stack) => Center(
      //       child: Text(
      //         'Failed to load products: $err',
      //         style: Theme.of(context).textTheme.bodyMedium,
      //       ),
      //     ),
      //   ),
      // );

      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(filteredProductProvider(searchQuery).future);
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
                    padding:
                        const EdgeInsets.only(top: 16, left: 15, right: 15),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchwidget(
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
                        ),
                        FiltersOptions(excludedFilterTypes: [
                          FilterTypes.category,
                        ]),
                      ],
                    ),
                  )),
                ),
                ref.watch(filteredProductProvider(searchQuery)).when(
                    // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                    data: (products) {
                      return products.isEmpty
                          ? SliverPadding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  child: EmptyScreenPlaceholder(
                                      text: "No products found"),
                                ),
                              ))
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
                                itemCount: products.take(6).length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                      product:
                                          products.take(6).toList()[index]);
                                },
                              ),
                            );
                    },
                    error: (e, _) {
                      return SliverFillRemaining(
                          child: ErrorPlaceholder(
                        error: "Error fetching items",
                        onTap: () {
                          ref.refresh(filteredProductProvider(searchQuery));
                        },
                      ));
                    },
                    loading: () => SliverToBoxAdapter(child: GridShimmer())),
                if (ref
                    .watch(filteredProductProvider(searchQuery).notifier)
                    .canLoadMore())
                  if (!ref
                      .watch(filteredProductProvider(searchQuery))
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
