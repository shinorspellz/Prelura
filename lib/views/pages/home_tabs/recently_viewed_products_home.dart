import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/product/product_provider.dart';
import '../../../core/router/router.gr.dart';
import '../../../shared/mock_data.dart';
import '../../shimmers/custom_shimmer.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/app_button.dart';
import '../../widgets/card.dart';
import 'all_tabs.dart';

class RecentlyViewedProductsHome extends ConsumerWidget {
  const RecentlyViewedProductsHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(recentlyViewedProductsProvider).maybeWhen(
        data: (products) {
          log(products.length.toString());
          return products.isEmpty
              ? SizedBox.shrink()
              : Column(
                  children: [
                    sectionTitle(
                      'Recently viewed ',
                      "",
                      context,
                      onTap: () => context.pushRoute(
                        RecentlyViewedProductRoute(title: "", id: 0),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1.1,
                      // height: 320,
                      // width: MediaQuery.sizeOf(context).width,
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 15),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            10.horizontalSpacing,
                        itemBuilder: (context, index) => SizedBox(
                          width: 180,
                          child: ProductCard(product: products[index]),
                        ),
                        itemCount: products.length,
                      ),
                    ),
                    buildDivider(context),
                    16.verticalSpacing,
                  ],
                );
        },
        loading: () => Column(
              children: [
                16.verticalSpacing,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: CustomShimmer(
                      child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              16.horizontalSpacing,
                              Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ))),
                ),
                16.verticalSpacing,
                AspectRatio(
                  aspectRatio: 1.1,
                  child: ListView(
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
              ],
            ),
        orElse: () => SizedBox.shrink());
  }
}
