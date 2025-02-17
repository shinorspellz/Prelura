import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_christmas.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../res/helper_function.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/filters_options.dart';
import '../profile_details/widgets/no_product_widget.dart';
import '../search_result/provider/search_provider.dart';
import '../search_result/view/search_result.dart';
import '../sell_item/brand_view.dart' as brands_view;
import 'filters.dart';

@RoutePage()
class ProductByHashtagPage extends ConsumerStatefulWidget {
  const ProductByHashtagPage({super.key, required this.hashtag});
  final String hashtag;

  @override
  ConsumerState<ProductByHashtagPage> createState() =>
      _ProductByHashtagPageState();
}

class _ProductByHashtagPageState extends ConsumerState<ProductByHashtagPage> {
  final controller = ScrollController();
  Input$ProductFiltersInput previousState = Input$ProductFiltersInput();
  Input$ProductFiltersInput _filter = Input$ProductFiltersInput();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      ref.read(filteredProductSearchQueryProvider.notifier).state = "";
      await ref
          .refresh(filteredProductProvider(((_filter, searchQuery))).future);
    });
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        final filters = ref.read(productFilterProvider);
        final filter = getFilters(
            value: "", hashtags: widget.hashtag, ref: ref, filterType: filters);
        ref
            .read(filteredProductProvider((filter, searchQuery)).notifier)
            .fetchMoreData(context);
      }
    });
  }

  @override
  void dispose() {
    HelperFunction.genRef!
        .read(filteredProductSearchQueryProvider.notifier)
        .state = "";
    controller.removeListener(() {}); // Ensure listener is removed
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filters = ref.watch(productFilterProvider);
    final filter = getFilters(
        value: "", hashtags: widget.hashtag, ref: ref, filterType: filters);
    final filteredProducts =
        ref.watch(filteredProductProvider((filter, searchQuery))).valueOrNull;
    final totalLength = ref
        .watch(filteredProductProvider((filter, searchQuery)).notifier)
        .totalLength;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: widget.hashtag,
        leadingIcon: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
      ),
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
                  delegate: FilteredProductStaticSliverDelegate(
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
                        FiltersOptions(onTap: () {
                          ref
                              .read(selectedFilteredProductProvider.notifier)
                              .state = Input$ProductFiltersInput(hashtags: [
                            widget.hashtag
                          ]);
                        }),
                      ],
                    ),
                  )),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  sliver: ref
                      .watch(filteredProductProvider((filter, searchQuery)))
                      .when(
                          data: (products) {
                            return products.isEmpty
                                ? SliverPadding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    sliver: SliverToBoxAdapter(
                                      child: NoProductWidget(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.65,
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
                                    ))
                                : SliverGrid.builder(
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
                                  );
                          },
                          error: (e, _) {
                            return SliverToBoxAdapter(
                                child: ErrorPlaceholder(
                                    error: "Error fetching items",
                                    onTap: () {
                                      ref.refresh(filteredProductProvider(
                                          (filter, searchQuery)).future);
                                    }));
                          },
                          loading: () =>
                              SliverToBoxAdapter(child: GridShimmer())),
                ),
                if ((filteredProducts?.isNotEmpty ?? false) ||
                    totalLength! > (filteredProducts?.length ?? 0))
                  if (ref
                      .watch(filteredProductProvider((filter, searchQuery))
                          .notifier)
                      .canLoadMore())
                    if (!ref
                        .watch(filteredProductProvider((filter, searchQuery)))
                        .isLoading)
                      const SliverToBoxAdapter(
                        child: brands_view.PaginationLoadingIndicator(),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
