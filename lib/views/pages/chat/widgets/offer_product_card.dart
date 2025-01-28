import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../model/product/product_model.dart';
import '../../../../res/colors.dart';
import '../../../widgets/brand_text_widget.dart';

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
    var productInfo = offerInfo.products?.first;
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: SizedBox(
          height: 70,
          width: 60,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) => Container(
              color: PreluraColors.grey,
            ),
            imageUrl: productInfo?.imagesUrl?.firstOrNull?.url ?? "",
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
      ),
      10.horizontalSpacing,
      SizedBox(
        width: boxWidth ?? 73.5.w,
        height: 70,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        capitalizeEachWord("${productInfo?.name}"),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // Truncate text
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              // fontSize: 1,
                            ),
                      ),
                      10.verticalSpacing,
                      if (productInfo?.brand != null)
                        BrandTextWidget(
                          brand: Brand(
                              name: "${productInfo?.brand["name"] ?? "NIL"}",
                              id: 0),
                          customBrand: null,
                          fontSize: 16,
                        ),
                    ]),
              ),
              Text(
                " £${productInfo?.price.toString().formatCurrency()}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
              ),
            ]),
      ),
    ]);
  }
}
