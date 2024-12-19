import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';

import '../../../res/colors.dart';
import '../../controller/product/product_provider.dart';
import '../shimmers/grid_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/gap.dart';
import 'Sell Item/view/brand_view.dart';

@RoutePage()
class FilterProductPage extends ConsumerStatefulWidget {
  const FilterProductPage(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductFilterPageState createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends ConsumerState<FilterProductPage> {
  final controller = FilterProductPage.scrollController;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref
            .read(filteredProductProvider((
              Input$ProductFiltersInput(
                  category: widget.id, customBrand: widget.customBrand),
              searchQuery
            )).notifier)
            .fetchMoreData();
      }
    });
  }

  @override
  void dispose() {
    controller.removeListener(() {}); // Ensure listener is removed
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
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
          await ref.refresh(filteredProductProvider((
            Input$ProductFiltersInput(
              category: widget.id,
            ),
            searchQuery
          )).future);
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
                          hintText: "Search for items and members",
                          enabled: true,
                          showInputBorder: true,
                          autofocus: false,
                          cancelButton: true,
                          onChanged: (val) {
                            searchQuery = val;
                            setState(() {});
                          },
                        ),
                        addVerticalSpacing(12),
                      ],
                    ),
                  )),
                ),
                ref
                    .watch(filteredProductProvider((
                      Input$ProductFiltersInput(
                        category: widget.id,
                      ),
                      searchQuery
                    )))
                    .maybeWhen(
                      // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                      data: (products) => SliverPadding(
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
                                product: products.take(6).toList()[index]);
                          },
                        ),
                      ),
                      orElse: () => SliverToBoxAdapter(child: Container()),
                    ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  sliver: ref
                      .watch(filteredProductProvider((
                        Input$ProductFiltersInput(
                          category: widget.id,
                        ),
                        searchQuery
                      )))
                      .when(
                          data: (products) {
                            if (products.length < 6)
                              return SliverToBoxAdapter(child: Container());
                            final clippedProducts = products.sublist(6);
                            return SliverGrid.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 0.50,
                              ),
                              itemCount: clippedProducts.length,
                              itemBuilder: (context, index) {
                                return ProductCard(
                                    product: clippedProducts[index]);
                              },
                            );
                          },
                          error: (e, _) {
                            return SliverToBoxAdapter(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(e.toString()),
                                    TextButton.icon(
                                      onPressed: () {
                                        // log(e.toString(), stackTrace: _);
                                        ref.invalidate(filteredProductProvider);
                                      },
                                      label: const Text('Retry'),
                                      icon: const Icon(Icons.refresh_rounded),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          loading: () =>
                              SliverToBoxAdapter(child: GridShimmer())),
                ),
                if (ref
                    .watch(filteredProductProvider((
                      Input$ProductFiltersInput(
                        category: widget.id,
                      ),
                      searchQuery
                    )).notifier)
                    .canLoadMore())
                  if (!ref
                      .watch(filteredProductProvider((
                        Input$ProductFiltersInput(
                          category: widget.id,
                        ),
                        searchQuery
                      )))
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
  double get minExtent => 75.8;

  @override
  double get maxExtent => 75.8;

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
