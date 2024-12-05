import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/shared/card_model.dart';
import 'package:sizer/sizer.dart';

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
              borderRadius: BorderRadius.circular(6), // Optional: rounded corners
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
                        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: PreluraColors.blackCardColor,
                          borderRadius: BorderRadius.circular(8), // Circular radius
                        ),
                        child: Row(
                          children: [
                            Icon(_isFavorite ? Icons.favorite : Icons.favorite_border_outlined, size: 17, color: PreluraColors.white),
                            const SizedBox(width: 2),
                            Text(
                              _favoriteCount > 0 ? '$_favoriteCount' : "",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PreluraColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8), // Optional: Add space between image and text
            Text(
              widget.itemData.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              widget.itemData.condition,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.greyColor),
            ),
            const SizedBox(height: 8),
            Text(
              "£ ${widget.itemData.price}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              widget.itemData.discount != null ? "£ ${widget.itemData.discount}" : "",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: PreluraColors.activeColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  // bool _isFavorite = false;
  // int _favoriteCount = 0;

  // void _toggleFavorite() {
  //   setState(() {
  //     _isFavorite = !_isFavorite;
  //     _favoriteCount += _isFavorite ? 1 : -1;
  //   });
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setState(() {
  //     _favoriteCount = widget.itemData.likes ?? 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProductDetailRoute(product: widget.product));
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wrap the Stack inside a ClipRRect to constrain the image
            ClipRRect(
              borderRadius: BorderRadius.circular(6), // Optional: rounded corners
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.product.imagesUrl.first.thumbnail,
                    height: 27.h,
                    width: double.infinity, // Ensure the image fills the width
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: GestureDetector(
                      // onTap: _toggleFavorite,
                      child: Container(
                        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: PreluraColors.blackCardColor,
                          borderRadius: BorderRadius.circular(8), // Circular radius
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border_outlined, size: 17, color: PreluraColors.white),
                            const SizedBox(width: 2),
                            Text(
                              widget.product.likes.toString(),
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PreluraColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8), // Optional: Add space between image and text
            Text(
              widget.product.name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            if (widget.product.condition != null) ...[
              Text(
                widget.product.condition!.simpleName, //widget.itemData.condition,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.greyColor),
              ),
              const SizedBox(height: 8),
            ],

            Text(
              "£ ${widget.product.price}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            // Text(
            //   widget.itemData.discount != null ? "£ ${widget.itemData.discount}" : "",
            //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: PreluraColors.activeColor),
            // ),
          ],
        ),
      ),
    );
  }
}
