import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/no_product_widget.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../widgets/error_placeholder.dart';
import '../../widgets/filters_options.dart';
import '../search_result/view/search_result.dart';
import 'products_by_brand.dart';

@RoutePage()
class ProductPriceFilterPage extends ConsumerStatefulWidget {
  const ProductPriceFilterPage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<ProductPriceFilterPage> createState() =>
      _ProductPriceFilterPageState();
}

class _ProductPriceFilterPageState
    extends ConsumerState<ProductPriceFilterPage> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      if (!mounted) return;

      ref.read(selectedFilteredProductProvider.notifier).state =
          Input$ProductFiltersInput(maxPrice: 15);
      await ref.refresh(filteredProductProvider(("")).future);
    });

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(filteredProductProvider("")).isLoading) return;
        // if (searchQuery.isNotEmpty) return;
        ref.read(filteredProductProvider("").notifier).fetchMoreData(context);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredProducts = ref.watch(filteredProductProvider("")).valueOrNull;
    final totalLength =
        ref.watch(filteredProductProvider("").notifier).totalLength;
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        appbarTitle: widget.title,
      ),
      body: CustomScrollView(controller: controller, slivers: [
        SliverPersistentHeader(
          pinned: true, // Keeps it static
          delegate: BrandedProductStaticSliverDelegate(
              child: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FiltersOptions(
                    excludedFilterTypes: [FilterTypes.price],
                    onTap: () {
                      ref.read(selectedFilteredProductProvider.notifier).state =
                          Input$ProductFiltersInput(maxPrice: 15);
                    }),
              ],
            ),
          )),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          sliver: ref.watch(filteredProductProvider("")).maybeWhen(
                data: (products) => SliverToBoxAdapter(
                  child: Column(
                    children: [
                      10.verticalSpacing,
                      if (products.isEmpty) ...[
                        Center(child: NoProductWidget()),
                      ] else ...[
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          // controller: controller,
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
                      ],
                      10.verticalSpacing,
                      if ((filteredProducts?.isNotEmpty ?? false) ||
                          totalLength! > (filteredProducts?.length ?? 0))
                        if (ref
                            .watch(filteredProductProvider("").notifier)
                            .canLoadMore())
                          if (!ref.watch(filteredProductProvider("")).isLoading)
                            PaginationLoadingIndicator()
                    ],
                  ),
                ),
                error: (error, _) => SliverFillRemaining(
                    child: ErrorPlaceholder(
                  error: "Error fetching items",
                  onTap: () {
                    ref.invalidate(filteredProductProvider(""));
                  },
                )),
                loading: () => SliverToBoxAdapter(child: GridShimmer()),
                orElse: () => SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridShimmer(),
                )),
              ),
        ),
      ]),
    );
  }
}
