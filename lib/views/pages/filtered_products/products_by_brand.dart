import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../controller/product/product_provider.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/filters_options.dart';
import '../profile_details/widgets/no_product_widget.dart';
import '../search_result/view/search_result.dart';

@RoutePage()
class ProductsByBrandPage extends ConsumerStatefulWidget {
  const ProductsByBrandPage(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductsByBrandPageState createState() => _ProductsByBrandPageState();
}

class _ProductsByBrandPageState extends ConsumerState<ProductsByBrandPage> {
  final controller = ProductsByBrandPage.scrollController;
  Input$ProductFiltersInput previousState = Input$ProductFiltersInput();

  @override
  void initState() {
    super.initState();
    ref.read(filteredProductProvider('').notifier).resetIndex();
    Future.microtask(() async {
      if (!mounted) return;

      previousState = ref.read(selectedFilteredProductProvider);
      ref.read(filteredProductSearchQueryProvider.notifier).state = "";
      ref.read(selectedFilteredProductProvider.notifier).state =
          Input$ProductFiltersInput(
              brand: (widget.id)?.toInt(), customBrand: widget.customBrand);
      await ref.refresh(filteredProductProvider((searchQuery)).future);
    });
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref
            .read(filteredProductProvider(searchQuery).notifier)
            .fetchMoreData(context);
      }
    });
  }

  @override
  void dispose() {
    log(":::: I ran  from here");
    // HelperFunction.genRef!.refresh(selectedFilteredProductProvider);
    // Future.microtask(() {
    //   HelperFunction.genRef!
    //       .read(selectedFilteredProductProvider.notifier)
    //       .state = previousState;
    // });

    controller.removeListener(() {}); // Ensure listener is removed
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredProducts =
        ref.watch(filteredProductProvider(searchQuery)).valueOrNull;
    final totalLength =
        ref.watch(filteredProductProvider(searchQuery).notifier).totalLength;
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: widget.title ?? widget.customBrand,
      ),
      body: Builder(builder: (context) {
        return RefreshIndicator(
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
                    delegate: BrandedProductStaticSliverDelegate(
                        child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FiltersOptions(
                              excludedFilterTypes: [FilterTypes.brand],
                              onTap: () {
                                ref
                                        .read(selectedFilteredProductProvider
                                            .notifier)
                                        .state =
                                    Input$ProductFiltersInput(
                                        brand: widget.id,
                                        customBrand: widget.customBrand);
                              }),
                        ],
                      ),
                    )),
                  ),
                  ref.watch(filteredProductProvider(searchQuery)).maybeWhen(
                        // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                        data: (products) {
                          return products.isEmpty
                              ? SliverPadding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  sliver: SliverToBoxAdapter(
                                    child: NoProductWidget(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                    ),

                                    // Container(
                                    //   height:
                                    //       MediaQuery.of(context).size.height *
                                    //           0.7,
                                    //   child: Center(
                                    //     child: Text(
                                    //       "No products found",
                                    //       style: Theme.of(context)
                                    //           .textTheme
                                    //           .bodyLarge,
                                    //     ),
                                    //   ),
                                    // ),
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
                                    itemCount: products.length,
                                    itemBuilder: (context, index) {
                                      return ProductCard(
                                          product: products[index]);
                                    },
                                  ),
                                );
                        },
                        error: (e, _) {
                          return SliverToBoxAdapter(
                              child: ErrorPlaceholder(
                            error: "An error occurred",
                            onTap: () {
                              // log(e.toString(), stackTrace: _);
                              ref.invalidate(filteredProductProvider);
                            },
                          ));
                        },
                        loading: () => SliverToBoxAdapter(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: GridShimmer(),
                        )),
                        orElse: () => SliverToBoxAdapter(child: Container()),
                      ),
                  if ((filteredProducts?.isNotEmpty ?? false) ||
                      totalLength! > (filteredProducts?.length ?? 0))
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
        );
      }),
    );
  }
}

class BrandedProductStaticSliverDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;

  BrandedProductStaticSliverDelegate({required this.child});

  @override
  double get minExtent => 68.8;

  @override
  double get maxExtent => 68.8;

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
