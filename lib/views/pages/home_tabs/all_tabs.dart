import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/seller_profile_card.dart';

import '../../../controller/product/product_provider.dart';
import '../../../controller/refresh_provider.dart';
import '../../../controller/user/user_controller.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../../shared/mock_data.dart';
import '../../shimmers/custom_shimmer.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/card.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/popular_brands.dart';
import 'recently_viewed_products_home.dart';

class HomeAllTab extends ConsumerWidget {
  const HomeAllTab(
      {super.key, required this.searchQuery, required this.controller});
  final String searchQuery;
  final ScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      // physics: AlwaysScrollableScrollPhysics(),
      // controller: controller,
      child: Column(children: [
        if (searchQuery.isNotEmpty) ...[
          ref.watch(allProductProvider(searchQuery)).when(
              data: (products) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
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
                print(e);
                log("$_");
                return ErrorPlaceholder(
                  error: "An error occured",
                  onTap: () {
                    ref.invalidate(allProductProvider(searchQuery));
                  },
                );
              },
              loading: () => GridShimmer()),
        ] else ...[
          _buildBrandsYouLove(context, ref),
          ref.watch(recommendedSellersProvider).when(
            data: (users) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDivider(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Shops",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: getDefaultSize(size: 16),
                            ),
                          ),
                          6.verticalSpacing,
                          Text(
                            "Buy from trusted and popular vendors",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: PreluraColors.grey,
                              fontSize: getDefaultSize(),
                            ),
                          ),
                          8.verticalSpacing,
                        ]),
                  ),
                  AspectRatio(
                    aspectRatio: 1.65,
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          20.horizontalSpacing,
                      itemBuilder: (context, index) => SizedBox(
                        width: 130,
                        child: SellerProfileCard(user: users[index].seller),
                      ),
                      itemCount: users.length,
                    ),
                  ),
                  buildDivider(context),
                ],
              );
            },
            error: (error, stackTrace) {
              // Handle error state
              return ErrorPlaceholder(
                error: "An error occured",
                onTap: () {
                  ref.invalidate(recommendedSellersProvider);
                },
              );
            },
            loading: () {
              // Handle loading state
              return Center(child: CircularProgressIndicator());
            },
          ),
          RecentlyViewedProductsHome(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                "What's New ?",
                textAlign: TextAlign.left,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ref.watch(allProductProvider(null)).maybeWhen(
                // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                error: (e, _) {
                  print(e);
                  log("$_");
                  return ErrorPlaceholder(
                    error: "An error occured",
                    onTap: () {
                      ref.refresh(allProductProvider(searchQuery));
                    },
                  );
                },
                data: (products) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
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
                    );
                  }),
                ),
                orElse: () => Container(),
              ),
          buildDivider(context),
          _buildSectionTitle(
            'Shop Bargains',
            "Steals under £15",
            context,
            onTap: () => context.pushRoute(
              ProductPriceFilterRoute(title: 'Steals under £15'),
            ),
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
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: ref.watch(allProductProvider(null)).when(
                  skipLoadingOnRefresh: !ref.watch(homeRefreshProvider),
                  data: (products) {
                    if (products.length < 16) return Container();

                    final clippedProducts = products.sublist(16);
                    final chunkedProducts = List.generate(
                      (clippedProducts.length / 10).ceil(),
                      (i) => clippedProducts.skip(i * 10).take(10).toList(),
                    );

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chunkedProducts.length,
                      itemBuilder: (context, chunkIndex) {
                        return Column(
                          children: [
                            // GridView for the current chunk of 10 products
                            GridView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(left: 16),
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20,
                                childAspectRatio: 0.50,
                              ),
                              itemCount: chunkedProducts[chunkIndex].length,
                              itemBuilder: (context, productIndex) {
                                return ProductCard(
                                    product: chunkedProducts[chunkIndex]
                                        [productIndex]);
                              },
                            ),
                            // Popular Brands widget after every 10 products
                            if (chunkIndex < chunkedProducts.length - 1)
                              PopularBrands(
                                startIndex: chunkIndex, // Dynamic start index
                                limit: 5,
                              ),
                          ],
                        );
                      },
                    );
                  },
                  error: (e, _) {
                    return ErrorPlaceholder(
                      error: "An error occurred",
                      onTap: () {
                        ref.invalidate(allProductProvider(null));
                      },
                    );
                  },
                  loading: () => GridShimmer(),
                ),
          )
        ],
      ]),
    );
  }
}

Widget _buildSectionTitle(
    String MainTitle, String subtitle, BuildContext context,
    {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: PreluraColors.greyColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text("See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: PreluraColors.primaryColor)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget _buildBrandsYouLove(BuildContext context, WidgetRef ref) {
  return ref.watch(favoriteBrandProductsProvider).maybeWhen(
      data: (products) {
        log(products.length.toString());
        return products.isEmpty
            ? SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brands You Love",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: getDefaultSize(size: 16),
                            ),
                          ),
                          6.verticalSpacing,
                          Text(
                            "Recommended from your favorite brands",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: PreluraColors.grey,
                              fontSize: getDefaultSize(),
                            ),
                          ),
                          8.verticalSpacing,
                        ]),
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
      orElse: () => Column(
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
          ));
}

Widget sectionTitle(String MainTitle, String subtitle, BuildContext context,
    {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text("See All",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: PreluraColors.primaryColor)),
        )
      ],
    ),
  );
}
