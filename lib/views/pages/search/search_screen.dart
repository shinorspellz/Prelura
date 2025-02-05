import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/brands_provider.dart';
import 'package:prelura_app/controller/search_history_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/logs.dart';
import 'package:prelura_app/views/pages/search/search_helper_box.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/product/product_provider.dart';
import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../../core/router/router.gr.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';

final activeSearchProvider = StateProvider<bool>((ref) => false);

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(activeSearchProvider);
    final showProducts = ref.watch(showSearchProducts);
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDivider(context),
                addVerticalSpacing(65),
                if (state == false) ...[
                  addVerticalSpacing(9),
                  // TopShop(context, ref),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        ref
                                                .read(
                                                    selectedFilteredProductProvider
                                                        .notifier)
                                                .state =
                                            Input$ProductFiltersInput(
                                                brand: (brand.id).toInt());
                                        // ref.invalidate(filteredProductProvider);
                                        context.pushRoute(ProductsByBrandRoute(
                                            title: brand.name,
                                            id: (brand.id).toInt()));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 10),
                                        decoration: BoxDecoration(
                                            color: PreluraColors.activeColor,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Text(
                                          brand.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: PreluraColors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: getDefaultSize(),
                                              ),
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
                        }, data: (data) {
                          if (data.isEmpty) {
                            return [SizedBox.shrink()];
                          }

                          return data.sublist(6).take(10).map(
                                (brand) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      ref
                                              .read(
                                                  selectedFilteredProductProvider
                                                      .notifier)
                                              .state =
                                          Input$ProductFiltersInput(
                                              brand: (brand.id).toInt());
                                      context.pushRoute(ProductsByBrandRoute(
                                          title: brand.name,
                                          id: (brand.id).toInt()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: PreluraColors.activeColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Text(
                                        brand.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: getDefaultSize(),
                                                color: PreluraColors.white,
                                                fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                        })
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      ref.read(selectedFilteredProductProvider.notifier).state =
                          Input$ProductFiltersInput(discountPrice: true);
                      context.router
                          .push(DiscountedProductsView(title: "", id: 0));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 20.h,
                      margin: EdgeInsets.all(16),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(PreluraIcons.webp_xmas),
                            fit: BoxFit.cover,
                            alignment: Alignment.topLeft),
                        borderRadius: BorderRadius.all(
                            Radius.circular(getDefaultBorderRadius())),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _categoriesSection(
                            "Women", PreluraIcons.webp_women, context,
                            onTap: () {
                          assignCategory("Women", context, ref);
                        }),
                        _categoriesSection(
                            "Men", PreluraIcons.webp_men, context, onTap: () {
                          assignCategory("Men", context, ref);
                        }),
                        _categoriesSection("Kids", PreluraIcons.kids, context,
                            onTap: () {
                          assignCategory("Kids", context, ref);
                        }),
                        // _categoriesSection("Electronics", PreluraIcons.electronics, context),
                        // _categoriesSection("Home", PreluraIcons.home, context),
                        // _categoriesSection("Entertainment", PreluraIcons.entertainment, context),
                        // _categoriesSection("Pets", PreluraIcons.petCare, context),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      context.pushRoute(SellItemRoute());
                    },
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
                          borderRadius:
                              BorderRadius.circular(getDefaultBorderRadius()),
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
                              borderRadius: BorderRadius.all(
                                  Radius.circular(getDefaultBorderRadius())),
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
                  GestureDetector(
                    onTap: () {
                      final vintageStyle = Enum$StyleEnum.values.firstWhere(
                        (style) =>
                            style !=
                                Enum$StyleEnum
                                    .$unknown && // Exclude unknown value
                            style.name
                                .replaceAll('_', ' ')
                                .toLowerCase()
                                .contains(
                                    "vintage"), // Match "christmas" exactly
                      );
                      logger.d(vintageStyle);
                      ref.read(selectedFilteredProductProvider.notifier).state =
                          Input$ProductFiltersInput(style: vintageStyle);

                      context.router.push(
                          ChristmasFilteredProductRoute(style: vintageStyle));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45.h,
                      margin: EdgeInsets.all(16),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(PreluraIcons.webp_vintage),
                            fit: BoxFit.cover,
                            alignment: Alignment.topLeft),
                        borderRadius: BorderRadius.all(
                            Radius.circular(getDefaultBorderRadius())),
                      ),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    children: [
                      _buildPromoBanner(
                          "Christmas Jumpers", PreluraIcons.webp_season,
                          onTap: () {
                        context.router.push(PartyFilteredProductRoute());
                      }),
                      _buildPromoBanner(
                          "Party Season", PreluraIcons.webp_jumpers, onTap: () {
                        final christmasStyle = Enum$StyleEnum.values.firstWhere(
                          (style) =>
                              style !=
                                  Enum$StyleEnum
                                      .$unknown && // Exclude unknown value
                              style.name
                                  .replaceAll('_', ' ')
                                  .toLowerCase()
                                  .contains(
                                      "christmas"), // Match "christmas" exactly
                        );
                        logger.d(christmasStyle);
                        ref
                                .read(selectedFilteredProductProvider.notifier)
                                .state =
                            Input$ProductFiltersInput(style: christmasStyle);
                        context.router.push(ChristmasFilteredProductRoute(
                            style: christmasStyle));
                      }),
                    ],
                  ),
                ] else ...[
                  if (!showProducts) SearchHelperBox() else LiveSearchPage(),
                ]
              ],
            ),
          ),
          Container(
            height: 110,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22.0, left: 16),
                  child: Text(
                    "Discover",
                    textAlign: TextAlign.left,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 6),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Searchwidget(
                      hintText: "Search members and hashtags",
                      obscureText: false,
                      shouldReadOnly: false,
                      controller: ref.read(searchTextController),
                      onFocused: (val) {
                        ref.read(activeSearchProvider.notifier).state = val;
                      },
                      onChanged: (value) {
                        ref.read(activeSearchProvider.notifier).state = true;

                        ref.read(searchHistoryQueryProvider.notifier).state =
                            value;

                        if (ref.read(showSearchProducts) == true) {
                          ref
                              .read(searchFilterProvider.notifier)
                              .updateFilter(FilterTypes.category, value);
                        }
                      },
                      onCancel: () {
                        ref.read(activeSearchProvider.notifier).state = false;
                        ref.read(searchTextController.notifier).state.clear();
                        ref.read(showSearchProducts.notifier).state = false;
                        ref
                            .read(searchFilterProvider.notifier)
                            .clearAllFilters();
                      },
                      enabled: true,
                      showInputBorder: true,
                      autofocus: false,
                      cancelButton: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoriesSection(String title, String image, context,
      {required Function() onTap}) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              onTap: onTap,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? PreluraColors.activeColor.withOpacity(0.4)
                      : PreluraColors.activeColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(getDefaultBorderRadius()),
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: getDefaultSize(), fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void assignCategory(
      String categoryName, BuildContext context, WidgetRef ref) {
    final category = Enum$ParentCategoryEnum.values.firstWhere((category) =>
        category.name.toLowerCase() == categoryName.toLowerCase());

    ref.read(selectedFilteredProductProvider.notifier).state =
        Input$ProductFiltersInput(parentCategory: category);
    context.router.push(
        FilterProductRoute(title: categoryName, parentCategory: category));
  }

  // Widget _brandButtons(String title, context) {
  //   return GestureDetector(
  //     onTap: () {},
  //     child: Container(
  //       width: double.infinity,
  //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //       decoration: BoxDecoration(
  //         color: PreluraColors.activeColor.withOpacity(0.1),
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       child: Text(
  //         title,
  //         textAlign: TextAlign.center,
  //         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  //               fontWeight: FontWeight.w700,
  //               fontSize: getDefaultSize(),
  //             ),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildPromoBanner(String title, String imagePath,
      {required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(getDefaultBorderRadius()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double getDefaultBorderRadius({double? size}) {
  return size ?? 4;
}

// Widget _buildSectionTitle(
//     String MainTitle, String subtitle, BuildContext context,
//     {VoidCallback? onTap}) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           MainTitle,
//           textAlign: TextAlign.left,
//           style: Theme.of(context)
//               .textTheme
//               .bodyLarge
//               ?.copyWith(fontSize: 17, color: PreluraColors.primaryColor),
//         ),
//         const SizedBox(
//           height: 1,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               subtitle,
//               textAlign: TextAlign.left,
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(color: PreluraColors.greyColor),
//             ),
//             GestureDetector(
//               onTap: onTap,
//               child: Text("See All",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodySmall
//                       ?.copyWith(color: PreluraColors.primaryColor)),
//             )
//           ],
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//       ],
//     ),
//   );
// }
