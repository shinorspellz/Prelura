import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/images.dart';
import 'package:sizer/sizer.dart';

import '../../../core/router/router.gr.dart';
import '../../../res/colors.dart';
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
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    for (var brand in [
                      'Ralph Lauren',
                      'Gucci',
                      'Nike',
                      'Adidas',
                      'Fubu',
                      'Yeezy'
                    ])
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              color: PreluraColors.activeColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            brand,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: PreluraColors.white),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              addVerticalSpacing(8),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var brand in [
                      'Toms',
                      'Vans',
                      'Timberland',
                      'D&Ds',
                      'Versace',
                      'D&G'
                    ])
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              color: PreluraColors.activeColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(brand,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: PreluraColors.white)),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 20.h,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(PreluraIcons.webp_xmas),
                      fit: BoxFit.cover,
                      alignment: Alignment.topLeft),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
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
                    _categoriesSection(
                        "Electronics", PreluraIcons.electronics, context),
                    _categoriesSection("Home", PreluraIcons.home, context),
                    _categoriesSection(
                        "Entertainment", PreluraIcons.entertainment, context),
                    _categoriesSection("Pets", PreluraIcons.petCare, context),
                  ],
                ),
              ),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
                          child: Text("DONT WEAR IT?\n SELL IT 🤑",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w700,
                                      color: PreluraColors.white))),
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
      width: 150,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image,
              height: 150,
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
