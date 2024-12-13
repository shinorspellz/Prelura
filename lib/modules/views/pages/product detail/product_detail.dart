import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/auth_page.dart';
import 'package:prelura_app/modules/views/pages/product%20detail/widget/product_description.dart';
import 'package:prelura_app/modules/views/pages/product%20detail/widget/product_top_details.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/gesture_navigator.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../res/colors.dart';
import '../../../../res/helper_function.dart';
import '../../../../res/images.dart';
import '../../../../shared/card_model.dart';
import '../../shimmers/product_details_shimmer.dart';
import '../../widgets/card.dart';

@RoutePage()
class ProductDetailScreen extends ConsumerStatefulWidget {
  final int productId;
  const ProductDetailScreen({super.key, required this.productId});

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
    setState(() {
      // _favoriteCount = product.likes ?? 0;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //

  @override
  Widget build(BuildContext context) {
    // final tabRouter = AutoTabsRouter.of(context);
    HelperFunction.context = context;

    return Scaffold(
      body: ref.watch(getProductProvider(widget.productId)).when(
            data: (product) {
              return ProductDetailsShimmer();
              bool isCurrentUser = product.seller.username ==
                  ref.read(userProvider).valueOrNull?.username;

              void showOptionModal() => VBottomSheetComponent.actionBottomSheet(
                    context: context,
                    actions: [
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                            context.pushRoute(SellItemRoute(product: product));
                          },
                          title: 'Edit product'),
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    Consumer(builder: (context, ref, _) {
                                      return AlertDialog.adaptive(
                                        title: const Text('Delete Product'),
                                        content: const Text(
                                            'This product would be deleted parmanently, are you sure you want to delete ?'),
                                        actions: [
                                          if (ref
                                              .watch(productProvider)
                                              .isLoading)
                                            const Padding(
                                              padding: EdgeInsets.only(top: 12),
                                              child: UnconstrainedBox(
                                                  child: SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: LoadingWidget(),
                                              )),
                                            )
                                          else
                                            TextButton(
                                                onPressed: () async {
                                                  await ref
                                                      .read(productProvider
                                                          .notifier)
                                                      .deleteProduct(
                                                          widget.productId);
                                                  ref
                                                      .read(productProvider)
                                                      .whenOrNull(
                                                        error: (e, _) =>
                                                            context.alert(
                                                                'An error occured deleting product'),
                                                        data: (_) {
                                                          HelperFunction
                                                                  .context =
                                                              context;
                                                          HelperFunction.showToast(
                                                              message:
                                                                  "product deleted successfully");
                                                          Navigator.of(context)
                                                            ..pop()
                                                            ..pop();
                                                        },
                                                      );
                                                },
                                                child: const Text('Delete')),
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: const Text('Dismiss')),
                                        ],
                                      );
                                    }));
                          },
                          title: 'Delete product'),
                    ],
                  );
              void showOtherOptionModal() =>
                  VBottomSheetComponent.actionBottomSheet(
                    context: context,
                    actions: [
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: 'Buy now',
                          textColor: PreluraColors.primaryColor,
                          textWeight: FontWeight.w800),
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: 'Share'),
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                            final userLiked = !product.userLiked;

                            ref.read(productProvider.notifier).likeProduct(
                                  int.parse(product.id),
                                  userLiked,
                                  userLiked
                                      ? product.likes + 1
                                      : product.likes - 1,
                                );
                          },
                          title: product.userLiked
                              ? 'Remove from favourites'
                              : "Add to favourites"),
                      VBottomSheetItem(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: 'Report',
                          textColor: PreluraColors.error),
                    ],
                  );

              return Scaffold(
                bottomNavigationBar: isCurrentUser
                    ? null
                    : Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, bottom: 32, right: 16, top: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                onTap: () {},
                                text: "Make an Offer",
                                bgColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                borderColor: Colors.purple,
                                textColor: Colors.purple,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: AppButton(
                                onTap: () {},
                                text: "Buy now",
                                textColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                borderColor: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                items: product.imagesUrl
                                    .map((e) => CachedNetworkImage(
                                          imageUrl: e.url,
                                          fit: BoxFit.cover,
                                        ))
                                    .toList(),
                              ),
                              Positioned(
                                bottom: 15,
                                right: 15,
                                child: GestureDetector(
                                  onTap: () async {
                                    final userLiked = !product.userLiked;

                                    ref
                                        .read(productProvider.notifier)
                                        .likeProduct(
                                          int.parse(product.id),
                                          userLiked,
                                          userLiked
                                              ? product.likes + 1
                                              : product.likes - 1,
                                        );
                                    // Update state using providers
                                    // final isLiked = await ref.read(toggleLikeProductProvider(int.parse(product.id)).future);

                                    // product = product.copyWith(userLiked: isLiked, likes: isLiked ? product.likes + 1 : product.likes - 1);
                                    // ref.refresh(allProductProvider);
                                    // setState(() {});
                                    // ref.refresh(allProductProvider.future);
                                    // ref.refresh(userFavouriteProduct.future);
                                    // ref.refresh(getProductProvider(widget.productId));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 8, right: 8),
                                    decoration: BoxDecoration(
                                      color: PreluraColors.blackCardColor,
                                      borderRadius: BorderRadius.circular(
                                          8), // Circular radius
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                            product.userLiked
                                                ? Icons.favorite
                                                : Icons
                                                    .favorite_border_outlined,
                                            size: 17,
                                            color: PreluraColors.white),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${product.likes}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                  color: PreluraColors.white),
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
                                  child: carouselIndicator(
                                      product.imagesUrl.length)),
                              Positioned(
                                  top: showAppBar == 1 ? 40 : 60,
                                  left: 15,
                                  right: 15,
                                  child: VisibilityDetector(
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
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
                                        ),
                                        InkWell(
                                          onTap: () {
                                            HapticFeedback.lightImpact();
                                            if (isCurrentUser) {
                                              showOptionModal();
                                            } else {
                                              showOtherOptionModal();
                                            }
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: PreluraColors.black
                                                .withOpacity(0.2),
                                            child: Icon(
                                              Icons.more_vert_rounded,
                                              color: PreluraColors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductTopDetails(
                                  product: product,
                                ),
                                ProductDescription(
                                  product: product,
                                ),
                                const SizedBox(height: 8.0),
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
                              physics: const ClampingScrollPhysics(),
                              controller: _tabController,
                              children: [
                                _buildMemberItemsTab(context, product),
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
                                  onPressed: () => Navigator.pop(context)),
                              appbarTitle: product.name,
                              trailingIcon: [
                                if (isCurrentUser) ...[
                                  IconButton(
                                      onPressed: () {
                                        HapticFeedback.lightImpact();
                                        showOptionModal();
                                      },
                                      icon: Icon(
                                        Icons.more_vert_rounded,
                                        color:
                                            Theme.of(context).iconTheme.color,
                                      )),
                                ] else
                                  IconButton(
                                      onPressed: () {
                                        HapticFeedback.lightImpact();
                                        showOtherOptionModal();
                                      },
                                      icon: Icon(
                                        Icons.more_vert_rounded,
                                        color:
                                            Theme.of(context).iconTheme.color,
                                      )),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              );
            },
            error: (e, _) => Center(
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
            ),
            loading: () => ProductDetailsShimmer(),
          ),
    );
  }

  Widget _buildMemberItemsTab(BuildContext context, Product product) {
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
          child: ref.watch(userProduct(product.seller.username)).when(
                skipLoadingOnRefresh: false,
                data: (data) {
                  final items = data.where((x) => x.id != product.id).toList();
                  if (items.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      child: Center(
                        child: Text(
                          'No member items available yet',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    );
                  }
                  return DisplaySection(
                    products: items,
                  );
                },
                error: (e, _) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(e.toString()),
                      TextButton.icon(
                        onPressed: () {
                          // log(e.toString(), stackTrace: _);
                          ref.invalidate(userProduct(product.seller.username));
                        },
                        label: const Text('Retry'),
                        icon: const Icon(Icons.refresh_rounded),
                      ),
                    ],
                  ),
                ),
                loading: () => const LoadingWidget(
                  height: 50,
                ),
              ),
        )
      ],
    );
  }

  Widget _buildSimilarItemsTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ref.watch(similarProductsProvider(widget.productId)).when(
            skipLoadingOnRefresh: false,
            data: (data) {
              if (data.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Center(
                    child: Text(
                      'No similar items available yet',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                );
              }
              return DisplaySection(
                products: data,
              );
            },
            error: (e, _) => Center(
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
            ),
            loading: () => const LoadingWidget(
              height: 50,
            ),
          ),
    );
  }

  carouselIndicator(int length) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < length; i++)
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
