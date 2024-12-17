import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';

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
    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(filterProductByPriceProvider(15)).isLoading) return;
        // if (searchQuery.isNotEmpty) return;
        ref.read(filterProductByPriceProvider(15).notifier).fetchMoreData();
      }
    });
    super.initState();
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ref.watch(filterProductByPriceProvider(15)).maybeWhen(
              data: (products) => Column(
                children: [
                  10.verticalSpacing,
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      controller: controller,
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
                  ),
                  10.verticalSpacing,
                  if (ref
                      .watch(filterProductByPriceProvider(15).notifier)
                      .canLoadMore())
                    if (!ref.watch(filterProductByPriceProvider(15)).isLoading)
                      PaginationLoadingIndicator()
                ],
              ),
              orElse: () => GridShimmer(),
            ),
      ),
    );
  }
}
