import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_description.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_top_details.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/modules/auth/views/widgets/display_section.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../widgets/card.dart';
import '../../widgets/gesture_navigator.dart';

@RoutePage()
class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  double showAppBar = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureNavigator(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 550,
                            autoPlay: true,
                            enlargeCenterPage: false,
                            padEnds: false,
                            disableCenter: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentPage = index;
                              });
                            },
                          ),
                          items: List.generate(
                            6,
                            (index) => ClipRRect(
                              child: Image.asset(
                                PreluraIcons.Image,
                                fit: BoxFit.cover,
                                height: 400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 15,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: PreluraColors.blackCardColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_border_outlined,
                                    size: 14, color: PreluraColors.white),
                                const SizedBox(width: 5),
                                Text(
                                  "14",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: PreluraColors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 0,
                          left: 0,
                          child: CarouselIndicator(),
                        ),
                        Positioned(
                            top: showAppBar == 1 ? 40 : 60,
                            left: 15,
                            right: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                VisibilityDetector(
                                    key: UniqueKey(),
                                    onVisibilityChanged: (visibilityInfo) {
                                      var visiblePercentage =
                                          visibilityInfo.visibleFraction * 100;
                                      if (visiblePercentage > 40) {
                                        if (!context.mounted) return;
                                        // 1 =
                                        showAppBar = 0;
                                        setState(() {});
                                      } else {
                                        if (!context.mounted) return;
                                        showAppBar =
                                            1 - (visiblePercentage / 40);
                                        setState(() {});
                                      }
                                    },
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: PreluraColors.black
                                            .withOpacity(0.2),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: PreluraColors.white,
                                          weight: 20,
                                        ),
                                      ),
                                    )),
                                // InkWell(
                                //   onTap: () {},
                                //   child: CircleAvatar(
                                //     backgroundColor:
                                //         PreluraColors.black.withOpacity(0.2),
                                //     child: Icon(
                                //       Icons.arrow_back,
                                //       color: PreluraColors.white,
                                //       weight: 20,
                                //     ),
                                //   ),
                                // )
                              ],
                            )),
                      ],
                    ),
                    const ProductTopDetails(),
                    const SizedBox(height: 16),
                    const ProductDescription(),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              TabBar(
                controller: _tabController,
                indicatorColor: PreluraColors.activeColor,
                unselectedLabelColor: PreluraColors.greyLightColor,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
                tabs: const [
                  Tab(text: "Member's items"),
                  Tab(text: "Similar items"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildMemberItemsTab(context),
                    _buildSimilarItemsTab(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, bottom: 32, right: 16, top: 16),
          child: Row(
            children: [
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: "Make an Offer",
                  bgColor: Theme.of(context).scaffoldBackgroundColor,
                  borderColor: Colors.purple,
                  textColor: Colors.purple,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: "Buy now",
                  textColor: Theme.of(context).scaffoldBackgroundColor,
                  bgColor: Colors.purple,
                  borderColor: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMemberItemsTab(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop bundles",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "Save on postage",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              AppButton(
                height: 35,
                width: 120,
                onTap: () {},
                text: "Create Bundle",
                textColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ],
          ),
        ),
        DisplaySection()
      ],
    );
  }

  Widget _buildSimilarItemsTab(BuildContext context) {
    return SingleChildScrollView(
      child: DisplaySection(),
    );
  }

  CarouselIndicator() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 6; i++)
            Container(
              margin: const EdgeInsets.all(5),
              height: _currentPage == i ? 7 : 5,
              width: _currentPage == i ? 7 : 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == i
                      ? PreluraColors.activeColor
                      : PreluraColors.black),
            )
        ],
      ),
    );
  }
}
