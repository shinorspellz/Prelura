import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/home_tabs/shop_bargains_widget.dart';

import '../../../controller/product/product_provider.dart';
import '../../../controller/refresh_provider.dart';
import '../../../model/product/product_model.dart';
import '../../../res/colors.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/card.dart';
import '../home.dart';

class FilterTab extends ConsumerWidget {
  const FilterTab(
      {super.key,
      required this.searchQuery,
      required this.category,
      required this.title,
      required this.products});
  final String searchQuery;
  final String title;
  final Enum$ParentCategoryEnum category;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<Enum$ParentCategoryEnum?>(
      selectedCategoryProvider,
      (previous, next) {
        if (previous != next) {
          ref.invalidate(filteredProductProvider(searchQuery));
        }
      },
    );

    return Column(children: [
      if (searchQuery.isNotEmpty) ...[
        ref.watch(filteredProductProvider(searchQuery)).when(
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
                    Text("An error occurred"),
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
        ref.watch(filteredProductProvider(searchQuery)).maybeWhen(
              // skipLoadingOnRefresh: !ref.watch(refreshingHome),
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
        ShopBargains(context, ref),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: ref.watch(filteredProductProvider(searchQuery)).when(
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
                      Text("An error occurred"),
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
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: 17, color: PreluraColors.primaryColor),
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
