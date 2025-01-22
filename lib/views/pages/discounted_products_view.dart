import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_christmas.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/holiday_mode_widget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';
import 'package:prelura_app/views/widgets/error_placeholder.dart';
import 'package:prelura_app/views/widgets/filters_options.dart';

import '../../controller/product/product_provider.dart';
import '../../core/graphql/__generated/schema.graphql.dart';
import '../shimmers/grid_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/empty_screen_placeholder.dart';
import '../widgets/gap.dart';
import 'profile_details/widgets/no_product_widget.dart';
import 'sell_item/brand_view.dart';

@RoutePage()
class DiscountedProductsView extends ConsumerStatefulWidget {
  const DiscountedProductsView(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductsByBrandPageState createState() => _ProductsByBrandPageState();
}

class _ProductsByBrandPageState extends ConsumerState<DiscountedProductsView> {
  final controller = DiscountedProductsView.scrollController;

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      if (!mounted) return;
      ref.read(selectedFilteredProductProvider.notifier).state =
          Input$ProductFiltersInput(discountPrice: true);
      await ref.refresh(filteredProductProvider((searchQuery)).future);
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
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "On Sale",
      ),
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
                  delegate: FilteredProductStaticSliverDelegate(
                      child: Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
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
                        FiltersOptions(onTap: () {
                          ref
                                  .read(selectedFilteredProductProvider.notifier)
                                  .state =
                              Input$ProductFiltersInput(discountPrice: true);
                        }),
                      ],
                    ),
                  )),
                ),
                ref.watch(filteredProductProvider((searchQuery))).maybeWhen(
                      // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                      data: (products) {
                        if (products.isEmpty) {
                          return SliverToBoxAdapter(
                            child: NoProductWidget(
                              height: MediaQuery.of(context).size.height * 0.75,
                            ),
                          );
                        }
                        return SliverPadding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
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
                              return ProductCard(product: products[index]);
                            },
                          ),
                        );
                      },
                      error: (e, _) {
                        return SliverToBoxAdapter(
                          child: ErrorPlaceholder(
                              error: "An error occured",
                              onTap: () {
                                ref.refresh(
                                    discountedProductsProvider(searchQuery)
                                        .future);
                              }),
                        );
                      },
                      loading: () => SliverToBoxAdapter(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: GridShimmer(),
                      )),
                      orElse: () => SliverToBoxAdapter(child: Container()),
                    ),
                if (ref
                        .watch(filteredProductProvider(searchQuery))
                        .valueOrNull
                        ?.isNotEmpty ==
                    true)
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
