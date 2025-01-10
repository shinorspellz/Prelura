import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../controller/product/brands_provider.dart';
import '../../controller/product/product_provider.dart';
import '../../core/graphql/__generated/schema.graphql.dart';
import '../../res/colors.dart';
import '../../res/utils.dart';
import '../pages/home_tabs/all_tabs.dart';
import '../shimmers/custom_shimmer.dart';
import '../shimmers/grid_shimmer.dart';
import 'card.dart';

class PopularBrands extends ConsumerWidget {
  const PopularBrands(
      {super.key, required this.limit, required this.startIndex});
  final int limit;
  final int startIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: ref.watch(popularBrandsProvider).maybeWhen(orElse: () {
          return Column(children: [
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
                        ))))
          ]);
        },
            // data: (data) => data.sublist(startIndex).take(limit).map(
            //       (brand) => GestureDetector(
            //         onTap: () => context.pushRoute(
            //             ProductsByBrandRoute(
            //                 title: brand.name,
            //                 id: (brand.id).toInt())),
            //         child: Container(
            //           padding: EdgeInsets.symmetric(
            //               horizontal: 16, vertical: 10),
            //           margin: EdgeInsets.only(right: 6),
            //           decoration: BoxDecoration(
            //               color: PreluraColors.activeColor,
            //               borderRadius: BorderRadius.circular(6)),
            //           child: Text(
            //             brand.name,
            //             style: Theme.of(context)
            //                 .textTheme
            //                 .bodyMedium
            //                 ?.copyWith(
            //                   color: PreluraColors.white,
            //                   fontWeight: FontWeight.w700,
            //                   fontSize: getDefaultSize(),
            //                 ),
            //           ),
            //         ),
            //       ),
            //     ))

            data: (brands) {
          return ref.watch(filteredProductProvider("")).when(
              data: (products) {
                return Column(
                  children: [
                    Divider(thickness: 1, color: PreluraColors.primaryColor),
                    sectionTitle(
                      brands[startIndex].name,
                      "",
                      context,
                      onTap: () {
                        ref
                                .read(selectedFilteredProductProvider.notifier)
                                .state =
                            Input$ProductFiltersInput(
                                brand: brands[startIndex].id);
                        context.pushRoute(ProductsByBrandRoute(
                            title: brands[startIndex].name,
                            id: (brands[startIndex].id).toInt()));
                      },
                    ),
                    AspectRatio(
                      aspectRatio: 1.0,
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
                    Divider(thickness: 1, color: PreluraColors.primaryColor),
                    16.verticalSpacing,
                  ],
                );
              },
              loading: () => Column(children: [
                    16.verticalSpacing,
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: CustomShimmer(
                            child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                ))))
                  ]),
              error: (Object error, StackTrace stackTrace) {
                return Container();
              });
        }),
      ),
    );
  }
}
