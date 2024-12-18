import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/images.dart';
import 'package:sizer/sizer.dart';

import '../../../core/router/router.gr.dart';
import '../../../res/colors.dart';
import '../../../shared/mock_data.dart';
import '../../controller/product/product_provider.dart';
import '../../controller/user/user_controller.dart';
import '../widgets/menu_card.dart';
import 'Search Result/provider/filter_provider.dart';
import 'Search Result/view/search_result.dart';

final ActiveSearchProvider = StateProvider<bool>((ref) => false);

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ActiveSearchProvider);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 1,
            ),
            addVerticalSpacing(20),
            Searchwidget(
                hintText: "Search for items or members",
                obscureText: false,
                shouldReadOnly: false,
                onChanged: (value) {
                  ref.read(ActiveSearchProvider.notifier).state = true;

                  ref.read(searchQueryProvider.notifier).state = value;
                },
                onCancel: () {
                  ref.read(ActiveSearchProvider.notifier).state = false;
                  ref.read(searchFilterProvider.notifier).clearAllFilters();
                },
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true),
            if (state == false) ...[
              addVerticalSpacing(18),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...ref.watch(popularBrandsProvider).maybeWhen(
                        orElse: () {
                          return List.generate(
                              10,
                              (_) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: ShimmerBox(
                                      height: 28,
                                      width: 100,
                                      radius: 5,
                                    ),
                                  ));
                        },
                        data: (data) => data.take(10).map(
                              (brand) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: GestureDetector(
                                  onTap: () => context.pushRoute(
                                      ProductsByBrandRoute(
                                          title: brand.name,
                                          id: (brand.id).toInt())),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: PreluraColors.activeColor,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text(
                                      brand.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: PreluraColors.white,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                  ],
                ),
              ),
              addVerticalSpacing(8),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...ref.watch(popularBrandsProvider).maybeWhen(
                        orElse: () {
                          return List.generate(
                              10,
                              (_) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: ShimmerBox(
                                      height: 28,
                                      width: 100,
                                      radius: 5,
                                    ),
                                  ));
                        },
                        data: (data) => data.sublist(6).map(
                              (brand) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: GestureDetector(
                                  onTap: () => context.pushRoute(
                                      ProductsByBrandRoute(
                                          title: brand.name,
                                          id: (brand.id).toInt())),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: PreluraColors.activeColor,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Text(
                                      brand.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: PreluraColors.white,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                  ],
                ),
              ),
              ref.watch(discountedProductsProvider).when(
                  data: (products) {
                    return Column(
                      children: [
                        addVerticalSpacing(20),
                        Divider(
                            thickness: 1, color: PreluraColors.primaryColor),
                        _buildSectionTitle(
                            'On Sale', "Discounted Products", context,
                            onTap: () {
                          //  context.pushRoute(
                          //     ProductPriceFilterRoute(
                          //         title: 'Steals under £15'),
                          //   );
                        }),
                        AspectRatio(
                          aspectRatio: 1.05,
                          child: ListView.separated(
                            padding:
                                EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                10.horizontalSpacing,
                            itemCount: products.length,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              final product = products[index];
                              return Container(
                                  width: 180,
                                  child: ProductCard(product: product));
                            },
                          ),
                        ),
                        Divider(
                            thickness: 1, color: PreluraColors.primaryColor),
                      ],
                    );
                  },
                  error: (e, _) {
                    print(e);
                    log("${_}");
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(e.toString()),
                          TextButton.icon(
                            onPressed: () {
                              // log(e.toString(), stackTrace: _);
                              ref.invalidate(discountedProductsProvider);
                            },
                            label: const Text('Retry'),
                            icon: const Icon(Icons.refresh_rounded),
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => AspectRatio(
                        aspectRatio: 1.1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              mockData.length,
                              (_) => Container(
                                // height: 220,
                                width: 180,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child:
                                    const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                              ),
                            ),
                          ),
                        ),
                      )),
              // Container(
              //   width: double.infinity,
              //   height: 20.h,
              //   margin: EdgeInsets.all(16),
              //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage(PreluraIcons.webp_xmas),
              //         fit: BoxFit.cover,
              //         alignment: Alignment.topLeft),
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //   ),
              // ),
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _categoriesSection(
                        "Women", PreluraIcons.webp_women, context),
                    _categoriesSection("Men", PreluraIcons.webp_men, context),
                    _categoriesSection("Kids", PreluraIcons.kids, context),
                    // _categoriesSection("Electronics", PreluraIcons.electronics, context),
                    // _categoriesSection("Home", PreluraIcons.home, context),
                    // _categoriesSection("Entertainment", PreluraIcons.entertainment, context),
                    // _categoriesSection("Pets", PreluraIcons.petCare, context),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => context.pushRoute(SellItemRoute()),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFab28b2),
                          Color(0XFFa126a8),
                          Color(0xFF8a2190),
                          Color(0xFF8a2190),
                        ], // Purple gradient
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "DONT WEAR IT?\nSELL IT 🤑",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w700,
                                    color: PreluraColors.white),
                          ),
                        ),
                        addHorizontalSpacing(20),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            PreluraIcons.mugShot,
                            height: 70,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                width: double.infinity,
                height: 45.h,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(PreluraIcons.webp_vintage),
                      fit: BoxFit.cover,
                      alignment: Alignment.topLeft),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildPromoBanner(
                      "Christmas Jumpers", PreluraIcons.webp_season),
                  _buildPromoBanner("Party Season", PreluraIcons.webp_jumpers),
                ],
              ),
            ] else ...[
              LiveSearchPage()
            ]
          ],
        ),
      ),
    );
  }

  Widget _categoriesSection(String title, String image, context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      width: 170,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image,
              height: 27.h,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          addVerticalSpacing(10),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: isDarkMode
                    ? PreluraColors.activeColor.withOpacity(0.4)
                    : PreluraColors.activeColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _brandButtons(String title, context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: PreluraColors.activeColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget _buildPromoBanner(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
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
