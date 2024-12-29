import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/hex_color.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/core/utils/utils.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/widgets/brand_text_widget.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/ui_constants.dart';
import 'package:prelura_app/shared/card_model.dart';
import 'package:sizer/sizer.dart';

import '../../../res/utils.dart';
import '../../controller/product/product_provider.dart';
import '../../controller/user/user_controller.dart';
import 'profile_picture.dart';

class DisplayCard extends StatefulWidget {
  const DisplayCard({super.key, required this.itemData});
  final PreluraCardModel itemData;

  @override
  _DisplayCardState createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  bool _isFavorite = false;
  int _favoriteCount = 0;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _favoriteCount += _isFavorite ? 1 : -1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _favoriteCount = widget.itemData.likes ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.router.push(ProductDetailRoute(product: widget.itemData));
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wrap the Stack inside a ClipRRect to constrain the image
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(6), // Optional: rounded corners
              child: Stack(
                children: [
                  Image.asset(
                    widget.itemData.image,
                    height: 27.h,
                    width: double.infinity, // Ensure the image fills the width
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
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
                            const SizedBox(width: 2),
                            Text(
                              _favoriteCount > 0 ? '$_favoriteCount' : "",
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
                ],
              ),
            ),
            const SizedBox(
                height: 8), // Optional: Add space between image and text
            Text(
              widget.itemData.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              widget.itemData.condition,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: PreluraColors.greyColor),
            ),
            const SizedBox(height: 8),
            Text(
              "£ ${widget.itemData.price}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              widget.itemData.discount != null
                  ? "£ ${widget.itemData.discount}"
                  : "",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: PreluraColors.activeColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends ConsumerStatefulWidget {
  ProductCard({super.key, required this.product, this.isSimilar = true});
  ProductModel product;
  bool isSimilar;

  @override
  ConsumerState<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends ConsumerState<ProductCard> {
  late bool userLiked = widget.product.userLiked;
  late int likeCount = widget.product.likes;

  @override
  void initState() {
    super.initState();
  }

  void _toggleFavourite() async {
    // Update state using providers
    final liked = !userLiked;
    final count = liked ? likeCount + 1 : likeCount - 1;
    log('$liked $count');
    setState(() {
      userLiked = liked;
      likeCount = count;
    });

    await ref.read(productProvider.notifier).likeProduct(
          int.parse(widget.product.id),
          liked,
          count,
        );

    // final isLiked = await ref.read(toggleLikeProductProvider(int.parse(widget.product.id)).future);
    // print(isLiked);
    // widget.product = widget.product.copyWith(userLiked: isLiked, likes: isLiked ? widget.product.likes + 1 : widget.product.likes - 1);
    // // ref.refresh(allProductProvider);
    // setState(() {});
    // ref.invalidate(allProductProvider);
    // ref.invalidate(userFavouriteProduct);
    // ref.invalidate(getProductProvider);
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider).valueOrNull;
    return GestureDetector(
      onTap: () {
        context.router
            .push(ProductDetailRoute(productId: int.parse(widget.product.id)));
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.isSimilar) ...[
              GestureDetector(
                onTap: () {
                  final user = ref.read(userProvider).valueOrNull;

                  if (user?.username == widget.product.seller.username) {
                    context.router.push(UserProfileDetailsRoute());
                  } else {
                    context.router.push(ProfileDetailsRoute(
                        username: widget.product.seller.username));
                  }
                },
                child: Row(
                  children: [
                    ProfilePictureWidget(
                      profilePicture: widget.product.seller.profilePictureUrl,
                      username: widget.product.seller.username,
                      width: 20,
                      height: 20,
                    ),
                    addHorizontalSpacing(8),
                    Text(
                      widget.product.seller.username,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Theme.of(context).textTheme.bodyMedium?.color),
                    ),
                  ],
                ),
              ),
              addVerticalSpacing(8),
            ],
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.product.imagesUrl.first.thumbnail,
                    height: 27.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: GestureDetector(
                      onTap: _toggleFavourite, // Use the toggle method
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                          color: PreluraColors.blackCardColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              userLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              size: 17,
                              color: PreluraColors.white,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              likeCount.isNegative ? '0' : likeCount.toString(),
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
                ],
              ),
            ),
            const SizedBox(height: 8),
            if (widget.product.brand != null ||
                widget.product.customBrand != null) ...[
              BrandTextWidget(
                brand: widget.product.brand,
                customBrand: widget.product.customBrand,
              ),
              // 10.verticalSpacing,
            ],
            Text(
              widget.product.name.trim(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            if (widget.product.condition != null) ...[
              Text(
                widget.product.condition!.simpleName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: PreluraColors.greyColor),
              ),
              const SizedBox(height: 8),
            ],
            Row(
              children: [
                Text(
                  "£ ${formatDynamicString(widget.product.price.toString())}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: widget.product.discountPrice != null
                            ? TextDecoration.lineThrough
                            : null,
                        color: widget.product.discountPrice != null
                            ? !context.isDarkMode
                                ? Colors.grey
                                : Colors.white30
                            : null,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (widget.product.discountPrice != null) ...[
                  10.horizontalSpacing,
                  Text(
                    "£ ${formatDynamicString(calculateDiscountedAmount(
                      price: widget.product.price,
                      discount:
                          double.parse(widget.product.discountPrice!).toInt(),
                    ).toString())}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
                Spacer(),
                if (widget.product.discountPrice != null)
                  Container(
                    // height: 30,
                    // width: 50,
                    decoration: BoxDecoration(
                      color: 'fc0001'.fromHex.withOpacity(0.5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    // alignment: Alignment.center,
                    child: Text(
                      ' ${double.parse(widget.product.discountPrice!).toInt()}%',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  )
              ],
            ),
            // if (widget.product.seller.username == user?.username &&
            //     context.router.current.name ==
            //         UserProfileDetailsRoute.name) ...[
            //   10.verticalSpacing,
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       // 10.horizontalSpacing,
            //       Icon(
            //         Icons.remove_red_eye_outlined,
            //         color: PreluraColors.grey,
            //         size: 18,
            //       ),
            //       10.horizontalSpacing,
            //       Text(
            //           "${widget.product.views.toString()} ${(widget.product.views.toInt() > 1 || widget.product.views.toInt() == 0) ? "views" : "view"}",
            //           style: Theme.of(context).textTheme.bodySmall),
            //     ],
            //   )
            // ]
          ],
        ),
      ),
    );
  }
}
