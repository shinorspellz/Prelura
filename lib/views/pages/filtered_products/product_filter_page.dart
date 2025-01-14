import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';
import 'package:prelura_app/views/widgets/display_section.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../widgets/error_placeholder.dart';

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

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(filterProductByPriceProvider(15)).isLoading) return;
        // if (searchQuery.isNotEmpty) return;
        ref.read(filterProductByPriceProvider(15).notifier).fetchMoreData();
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          sliver: ref.watch(filterProductByPriceProvider(15)).maybeWhen(
                data: (products) => SliverToBoxAdapter(
                  child: Column(
                    children: [
                      10.verticalSpacing,
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
                      10.verticalSpacing,
                      if (ref
                          .watch(filterProductByPriceProvider(15).notifier)
                          .canLoadMore())
                        if (!ref
                            .watch(filterProductByPriceProvider(15))
                            .isLoading)
                          PaginationLoadingIndicator()
                    ],
                  ),
                ),
                error: (error, _) => SliverFillRemaining(
                    child: ErrorPlaceholder(
                  error: "Error fetching items",
                  onTap: () {
                    ref.invalidate(filterProductByPriceProvider(15));
                  },
                )),
                loading: () => SliverToBoxAdapter(child: GridShimmer()),
                orElse: () => SliverToBoxAdapter(child: GridShimmer()),
              ),
        ),
      ]),
    );
  }
}
