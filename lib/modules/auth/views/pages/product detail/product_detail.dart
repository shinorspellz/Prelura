import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/more_product_grid_view.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_description.dart';
import 'package:prelura_app/modules/auth/views/pages/product%20detail/widget/product_top_details.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/modules/auth/views/widgets/rating.dart';
import 'package:sizer/sizer.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../widgets/card.dart';

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
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 400,
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
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PreluraColors.blackCardColor,
                          borderRadius:
                              BorderRadius.circular(12), // Circular radius
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border_outlined,
                                size: 14, color: PreluraColors.white),
                            SizedBox(width: 5),
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
                                    ;
                                    setState(() {});
                                  }
                                },
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
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
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor:
                                    PreluraColors.black.withOpacity(0.2),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: PreluraColors.white,
                                  weight: 20,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Container(
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTopDetails(),
                      SizedBox(height: 16.0),
                      ProductDescription(),
                      SizedBox(height: 16.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          "Consumer protection laws do not apply to your purchases from other consumers. "
                          "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                          "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                          "For more details, please review the full legal disclaimer."
                          "Consumer protection laws do not apply to your purchases from other consumers. "
                          "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                          "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                          "For more details, please review the full legal disclaimer.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 24.0),
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
                  tabs: [
                    Tab(text: "Member's items"),
                    Tab(text: "Similar items"),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(controller: _tabController, children: [
                    _buildMemberItemsTab(context),
                    Center(child: Text("Similar items content")),
                  ]),
                ),
              ],
            ),
          ),
          showAppBar == 1
              ? AnimatedOpacity(
                  opacity: showAppBar,
                  duration: const Duration(milliseconds: 340),
                  child: Container(
                    height: 90,
                    child: AppBar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      automaticallyImplyLeading: true,
                      leading: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "AppBar",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                          Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: AppButton(
                onTap: () {},
                text: "Make an Offer",
                bgColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: AppButton(
                onTap: () {},
                text: "Buy now",
                textColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberItemsTab(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(), // Prevent internal scrolling
                  shrinkWrap:
                      true, // Ensures the GridView only takes needed space
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 0.6, // Adjust to fit your card content
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return DisplayCard(); // Replace with your custom widget
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  CarouselIndicator() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 6; i++)
            Container(
              margin: EdgeInsets.all(5),
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
