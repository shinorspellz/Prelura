import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/pages/product_detail/widget/product_description.dart';
import 'package:prelura_app/views/pages/product_detail/widget/product_top_details.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/views/widgets/display_section.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../res/colors.dart';
import '../../../res/helper_function.dart';
import '../../../res/utils.dart';
import '../../shimmers/product_details_shimmer.dart';
import '../../widgets/full_screen_image.dart';

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
    log("in product details page");
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

    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(getProductProvider(widget.productId).future);
      },
      child: Scaffold(
        body: ref.watch(getProductProvider(widget.productId)).when(
              data: (product) {
                String? appUsername =
                    ref.read(userProvider).valueOrNull?.username;
                bool isCurrentUser = product.seller.username == appUsername;
                var userProducts =
                    ref.watch(userProduct(appUsername)).valueOrNull;
                bool isPinned = product.isFeatured ?? false;
                log(":::The product length is :::: ${userProducts?.length}");
                void showOptionModal() =>
                    VBottomSheetComponent.actionBottomSheet(
                      context: context,
                      actions: [
                        if ((userProducts?.length ?? 0) >= 5)
                          VBottomSheetItem(
                              onTap: (context) {
                                Navigator.pop(context);
                                _updatePinnedStatus(!isPinned, product);
                              },
                              title: isPinned
                                  ? "Remove from pinned"
                                  : 'Pin product'),
                        VBottomSheetItem(
                            onTap: (context) {
                              Navigator.pop(context);
                              context
                                  .pushRoute(SellItemRoute(product: product));
                            },
                            title: 'Edit product'),
                        VBottomSheetItem(
                            onTap: (context) {
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
                                                padding:
                                                    EdgeInsets.only(top: 12),
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
                                                            HelperFunction
                                                                .showToast(
                                                                    message:
                                                                        "product deleted successfully");

                                                            context.router
                                                                .popForced();
                                                            context.router
                                                                .popForced();
                                                            context.router
                                                                .popForced();

                                                            // Navigator.of(
                                                            //         context)
                                                            //     .pop();
                                                            // Navigator.of(
                                                            //         context)
                                                            //     .pop();
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
                            onTap: (context) {
                              Navigator.pop(context);
                            },
                            title: 'Buy now',
                            textColor: PreluraColors.primaryColor,
                            textWeight: FontWeight.w800),
                        VBottomSheetItem(
                            onTap: (context) {
                              Navigator.pop(context);
                            },
                            title: 'Share'),
                        VBottomSheetItem(
                            onTap: (context) {
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
                            onTap: (context) {
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
                                  onTap: () {
                                    context.router.push(
                                        SendAnOfferRoute(product: product));
                                  },
                                  text: "Send an Offer",
                                  bgColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderColor: Colors.purple,
                                  textColor: Colors.purple,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: AppButton(
                                  onTap: () {
                                    context.router
                                        .push(PaymentRoute(product: product));
                                  },
                                  text: "Buy now",
                                  textColor: PreluraColors.white,
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
                                    autoPlay: false,
                                    enlargeCenterPage: false,
                                    enableInfiniteScroll: false,
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
                                      .asMap()
                                      .entries
                                      .map((e) => GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (_) =>
                                                      FullScreenImage(
                                                    imageUrl: product.imagesUrl,
                                                    initialIndex: e.key,
                                                    isLocal: false,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: CachedNetworkImage(
                                              imageUrl: e.value.url,
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) {
                                                return ShimmerBox(
                                                  height: 550,
                                                  width: double.infinity,
                                                  radius: 0,
                                                );
                                              },
                                              fadeInDuration: Duration.zero,
                                              fadeOutDuration: Duration.zero,
                                            ),
                                          ))
                                      .toList(),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: 15,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final userLiked = !product.userLiked;

                                      await ref
                                          .read(productProvider.notifier)
                                          .likeProduct(
                                            int.parse(product.id),
                                            userLiked,
                                            userLiked
                                                ? product.likes + 1
                                                : product.likes - 1,
                                          );

                                      ref.invalidate(userProduct);

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
                                            visibilityInfo.visibleFraction *
                                                100;
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
                                              backgroundColor: PreluraColors
                                                  .black
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
                                              backgroundColor: PreluraColors
                                                  .black
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
                                        color:
                                            Theme.of(context).iconTheme.color),
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
              error: (e, _) => Container(
                padding: EdgeInsets.all(16),
                child: Center(
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
              ),
              loading: () => ProductDetailsShimmer(),
            ),
      ),
    );
  }

  Widget _buildMemberItemsTab(BuildContext context, ProductModel product) {
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
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getDefaultSize(),
                        ),
                  ),
                ],
              ),
              AppButton(
                height: 35,
                width: 120,
                onTap: () {},
                fontSize: 13,
                text: "Create Bundle",
                textColor: PreluraColors.white,
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
                    isInProduct: false,
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
                loading: () => GridShimmer(),
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

  _updatePinnedStatus(bool toPin, ProductModel product) async {
    await ref.read(productProvider.notifier).updateProduct(
          productId: int.parse(product.id),
          isFeatured: toPin,
        );
    context.alert(
      "product ${toPin ? "pinned" : "unpinned"} successfully",
    );
  }
}
