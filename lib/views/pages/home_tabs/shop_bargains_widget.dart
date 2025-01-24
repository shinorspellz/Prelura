import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/product/product_provider.dart';
import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../../core/router/router.gr.dart';
import '../../../shared/mock_data.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/app_button.dart';
import '../../widgets/card.dart';
import 'all_tabs.dart';

Widget ShopBargains(BuildContext context, WidgetRef ref) {
  return Column(
    children: [
      buildDivider(context),
      buildSectionTitle(
        'Shop Bargains',
        "Steals under £15",
        context,
        onTap: () {
          context.pushRoute(
            ProductPriceFilterRoute(title: 'Steals under £15'),
          );
          ref.read(selectedFilteredProductProvider.notifier).state =
              Input$ProductFiltersInput(maxPrice: 15);
        },
      ),
      AspectRatio(
        aspectRatio: 1.1,
        // height: 320,
        // width: MediaQuery.sizeOf(context).width,
        child: ref.watch(filterProductByPriceProvider(15)).maybeWhen(
              data: (products) => ListView.separated(
                padding: EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => 10.horizontalSpacing,
                itemBuilder: (context, index) => SizedBox(
                  width: 180,
                  child: ProductCard(product: products[index]),
                ),
                itemCount: products.length,
              ),
              orElse: () => ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  mockData.length,
                  (_) => Container(
                    // height: 220,
                    width: 180,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child:
                        const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                  ),
                ),
              ),
            ),
      ),
      buildDivider(context),
    ],
  );
}
