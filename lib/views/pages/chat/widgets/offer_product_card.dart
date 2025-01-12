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
  const OfferProductCard({
    super.key,
    required this.offerInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:

              // Image.asset(
              //   PreluraIcons.Image,
              //   height: 190,
              //   width: 150,
              //   fit: BoxFit.cover,
              // ),

              SizedBox(
            height: 100,
            width: 90,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => Container(
                color: PreluraColors.grey,
              ),
              imageUrl: offerInfo.product?.imagesUrl?.firstOrNull?.url ?? "",
              fit: BoxFit.cover,
              placeholder: (context, url) {
                return ShimmerBox(
                  height: 100,
                  width: 150,
                );
              },
              fadeInDuration: Duration.zero,
              fadeOutDuration: Duration.zero,
            ),
          ),
        ),
        10.horizontalSpacing,
        SizedBox(
          width: 40.w,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  capitalizeEachWord("${offerInfo.product?.name}"),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // Truncate text
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                ),
                10.verticalSpacing,
                if (offerInfo.product?.brand != null)
                  BrandTextWidget(
                    brand: Brand(
                        name: "${offerInfo.product?.style ?? "---"}", id: 0),
                    customBrand: null,
                    fontSize: 16,
                  ),
                // 15.verticalSpacing,
                // Text(
                //   "Size ${offerInfo.product?.size}",
                //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //         color: PreluraColors.grey,
                //         fontWeight: FontWeight.w500,
                //         fontSize: getDefaultSize(size: 16),
                //       ),
                // ),
                // if (offerInfo.product?.condition != null) ...[
                //   15.verticalSpacing,
                //   Text(
                //     "Used but in a good condition",
                //     maxLines: 2,
                //     overflow: TextOverflow.ellipsis,
                //     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //           color: PreluraColors.greyColor,
                //           fontWeight: FontWeight.w600,
                //           fontSize: getDefaultSize(size: 16),
                //         ),
                //   ),
                // ],
              ]),
        ),
      ],
    );
  }
}
