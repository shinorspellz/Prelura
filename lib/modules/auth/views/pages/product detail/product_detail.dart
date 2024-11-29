import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/pages/auth_page.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_description.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_top_details.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/modules/auth/views/widgets/display_section.dart';
import 'package:prelura_app/modules/auth/views/widgets/gesture_navigator.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../widgets/card.dart';

@RoutePage()
class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductDetailScreen> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  double showAppBar = 0;
  late TabController _tabController;

  bool _isFavorite = false;
  int _favoriteCount = 14;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _favoriteCount += _isFavorite ? 1 : -1;
    });
  }

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
    return GestureNavigationWidget(currentScreenBuilder: (context) {
      final tabRouter = AutoTabsRouter.of(context);
      return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.zero, // Ensure no padding
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
                              PreluraIcons.productImage,
                              fit: BoxFit.cover,
                              height: 400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: GestureDetector(
                          onTap: _toggleFavorite,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 8, right: 8),
                            decoration: BoxDecoration(
                              color: PreluraColors.blackCardColor,
                              borderRadius:
                                  BorderRadius.circular(8), // Circular radius
                            ),
                            child: Row(
                              children: [
                                Icon(
                                    _isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    size: 17,
                                    color: PreluraColors.white),
                                const SizedBox(width: 5),
                                Text(
                                  '$_favoriteCount',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: PreluraColors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 15,
                          right: 0,
                          left: 0,
                          child: CarouselIndicator()),
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
                                      showAppBar = 1 - (visiblePercentage / 40);
                                      setState(() {});
                                    }
                                  },
                                  child: InkWell(
                                    onTap: () {
                                      if (context.router.canPop()) {
                                        context.router.popForced();
                                      } else {
                                        tabRouter.setActiveIndex(ref
                                            .read(routePathProvider.notifier)
                                            .state);
                                        context.router.popForced();
                                      }
                                    },
                                    child: CircleAvatar(
                                      backgroundColor:
                                          PreluraColors.black.withOpacity(0.2),
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
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTopDetails(),
                        ProductDescription(),
                        SizedBox(height: 8.0),
                        // Container(
                        //   padding: EdgeInsets.symmetric(horizontal: 18),
                        //   child: Text(
                        //     "Consumer protection laws do not apply to your purchases from other consumers. "
                        //     "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                        //     "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                        //     "For more details, please review the full legal disclaimer."
                        //     "Consumer protection laws do not apply to your purchases from other consumers. "
                        //     "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                        //     "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                        //     "For more details, please review the full legal disclaimer.",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium
                        //         ?.copyWith(fontWeight: FontWeight.w300),
                        //   ),
                        // // ),
                        // SizedBox(height: 24.0),
                      ],
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: PreluraColors.activeColor,
                    unselectedLabelColor: PreluraColors
                        .greyLightColor, // Text color for inactive tabs
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16, // Font size for the active tab
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14, // Font size for inactive tabs
                    ),
                    tabs: const [
                      Tab(text: "Member's items"),
                      Tab(text: "Similar items"),
                    ],
                  ),
                  ContentSizeTabBarView(
                      physics: ClampingScrollPhysics(),
                      controller: _tabController,
                      children: [
                        _buildMemberItemsTab(context),
                        _buildSimilarItemsTab(context),
                      ]),
                ],
              ),
            ),
            showAppBar == 1
                ? AnimatedOpacity(
                    opacity: showAppBar,
                    duration: const Duration(milliseconds: 340),
                    child: PreluraAppBar(
                      appBarHeight: 50,
                      leadingIcon: IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Theme.of(context).iconTheme.color),
                          onPressed: () => {
                                if (context.router.canPop())
                                  {context.router.popForced()}
                                else
                                  {
                                    tabRouter.setActiveIndex(ref
                                        .read(routePathProvider.notifier)
                                        .state),
                                    context.router.popForced()
                                  }
                              }),
                      appbarTitle: "App Bar",
                      // trailingIcon: [
                      //   Icon(
                      //     Icons.arrow_back,
                      //     color: Theme.of(context).iconTheme.color,
                      //   ),
                      // ],
                    ),
                  )
                : const SizedBox.shrink(),
          ],
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
      );
    });
  }

  Widget _buildMemberItemsTab(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Shop Bundles Section
        Padding(
          padding: const EdgeInsets.all(16.0),
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

        // Grid View Section
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DisplaySection(),
        )
      ],
    );
  }

  Widget _buildSimilarItemsTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
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
              margin: const EdgeInsets.only(right: 5),
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
