import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../res/colors.dart';

class OfferProductCard extends ConsumerWidget {
  final OfferInfo offerInfo;
  final bool showPrice;
  final double? boxWidth;
  const OfferProductCard({
    super.key,
    required this.offerInfo,
    this.showPrice = false,
    this.boxWidth,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var productInfo = offerInfo.products?.first;
    return Column(children: [
      SizedBox(
        height: 75,
        width: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (cxt, index) {
            return offerInfo.products!.length == index
                ? GestureDetector(
                    onTap: () {
                      context.router.push(OfferMuiltibuyView(
                        products: offerInfo.products!,
                      ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: PreluraColors.primaryColor,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        "View\nall",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  )
                : ImageBuilder(
                    imageUrl:
                        offerInfo.products![index].imagesUrl?.first.url ?? "",
                  );
          },
          separatorBuilder: (_, __) {
            return addHorizontalSpacing(10);
          },
          itemCount: offerInfo.products!.length + 1,
        ),
      ),
      addVerticalSpacing(10),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          " £${offerInfo.offerPrice.toString().formatCurrency()}",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
        ),
      )
    ]);

    //   Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //   ImageBuilder(imageUrl:  productInfo?.imagesUrl?.first.url ?? "",),
    //   10.horizontalSpacing,
    //   SizedBox(
    //     width: boxWidth ?? double.infinity,
    //     height: 110,
    //     child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Expanded(
    //             child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.stretch,
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     capitalizeEachWord("${productInfo?.name}"),
    //                     maxLines: 2,
    //                     overflow: TextOverflow.ellipsis, // Truncate text
    //                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
    //                           fontWeight: FontWeight.w600,
    //                           // fontSize: 1,
    //                         ),
    //                   ),
    //                   10.verticalSpacing,
    //                   if (productInfo?.brand != null)
    //                     BrandTextWidget(
    //                       brand: Brand(
    //                           name: "${productInfo?.brand["name"] ?? "NIL"}",
    //                           id: 0),
    //                       customBrand: null,
    //                       fontSize: 16,
    //                     ),
    //                 ]),
    //           ),
    //           Text(
    //             " £${productInfo?.price.toString().formatCurrency()}",
    //             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                   fontWeight: FontWeight.w600,
    //                   fontSize: 16,
    //                 ),
    //           ),
    //         ]),
    //   ),
    // ]);
  }
}

class ImageBuilder extends StatelessWidget {
  final String imageUrl;
  const ImageBuilder({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: SizedBox(
        height: 75,
        width: 60,
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => Container(
            color: PreluraColors.grey,
          ),
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) {
            return ShimmerBox(
              height: 70,
              width: 70,
            );
          },
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
        ),
      ),
    );
  }
}
