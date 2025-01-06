import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../../res/colors.dart';
import '../../../shared/mock_data.dart';
import '../../../controller/product/product_provider.dart';
import '../../../controller/refresh_provider.dart';
import '../../../model/product/product_model.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/card.dart';
import '../home.dart';

class FilterTab extends ConsumerWidget {
  const FilterTab({super.key, required this.searchQuery, required this.id, required this.title, required this.products});
  final String searchQuery;
  final String title;
  final int id;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(
      selectedIdProvider,
      (previous, next) {
        if (previous != next) {
          ref.invalidate(filteredProductProvider((
            Input$ProductFiltersInput(
              category: id,
            ),
            searchQuery
          )));
        }
      },
    );

    return Column(children: [
      if (searchQuery.isNotEmpty) ...[
        ref
            .watch(filteredProductProvider((
              Input$ProductFiltersInput(
                category: id,
              ),
              searchQuery
            )))
            .when(
                data: (products) {
                  log("total product is ${products.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(e.toString()),
                        TextButton.icon(
                          onPressed: () {
                            // log(e.toString(), stackTrace: _);
                            ref.invalidate(allProductProvider(searchQuery));
                          },
                          label: const Text('Retry'),
                          icon: const Icon(Icons.refresh_rounded),
                        ),
                      ],
                    ),
                  );
                },
                loading: () => GridShimmer()),
      ] else ...[
        ref
            .watch(filteredProductProvider((
              Input$ProductFiltersInput(
                category: id,
              ),
              searchQuery
            )))
            .maybeWhen(
              // skipLoadingOnRefresh: !ref.watch(refreshingHome),
              data: (products) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.50,
                    ),
                    itemCount: products.take(6).length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products.take(6).toList()[index]);
                    },
                  );
                }),
              ),
              orElse: () => Container(),
            ),
        Divider(thickness: 1, color: PreluraColors.primaryColor),
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
                      child: const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                    ),
                  ),
                ),
              ),
        ),
        Divider(thickness: 1, color: PreluraColors.primaryColor),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: ref
              .watch(filteredProductProvider((
                Input$ProductFiltersInput(
                  category: id,
                ),
                searchQuery
              )))
              .when(
                  skipLoadingOnRefresh: !ref.watch(homeRefreshProvider),
                  data: (products) {
                    if (products.length < 6) return Container();
                    final clippedProducts = products.sublist(6);
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.50,
                      ),
                      itemCount: clippedProducts.length,
                      itemBuilder: (context, index) {
                        return ProductCard(product: clippedProducts[index]);
                      },
                    );
                  },
                  error: (e, _) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(e.toString()),
                          TextButton.icon(
                            onPressed: () {
                              // log(e.toString(), stackTrace: _);
                              ref.invalidate(allProductProvider);
                            },
                            label: const Text('Retry'),
                            icon: const Icon(Icons.refresh_rounded),
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => GridShimmer()),
        ),
      ],
    ]);
  }
}

Widget _buildSectionTitle(String MainTitle, String subtitle, BuildContext context, {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 17, color: PreluraColors.primaryColor),
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
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PreluraColors.greyColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text("See All", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PreluraColors.primaryColor)),
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
