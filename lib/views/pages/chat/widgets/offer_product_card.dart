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
  final bool amTheSeller, isSender;
  const OfferProductCard({
    super.key,
    required this.offerInfo,
    required this.amTheSeller,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // bool isPending = offerInfo.status?.toLowerCase() == "pending";
    return Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 90,
            width: 80,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => Container(
                color: PreluraColors.grey,
              ),
              imageUrl: offerInfo.product?.imagesUrl?.firstOrNull?.url ?? "",
              fit: BoxFit.cover,
              placeholder: (context, url) {
                return ShimmerBox(
                  height: 90,
                  width: 80,
                );
              },
              fadeInDuration: Duration.zero,
              fadeOutDuration: Duration.zero,
            ),
          ),
        ),
        10.horizontalSpacing,
        SizedBox(
          width: 48.w,
          height: 90,
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
                        name: "${offerInfo.product?.brand["name"] ?? "NIL"}",
                        id: 0),
                    customBrand: null,
                    fontSize: 16,
                  ),
              ]),
        ),
      ]),
    ]);
  }
}
