import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../model/product/product_model.dart';
import '../../../../res/colors.dart';
import '../../../../res/images.dart';
import '../../../widgets/brand_text_widget.dart';

class OfferProductCard extends ConsumerWidget {
  const OfferProductCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            PreluraIcons.Image,
            height: 190,
            width: 150,
            fit: BoxFit.cover,
          ),

          // CachedNetworkImage(
          //   errorWidget: (context, url, error) => Container(
          //     color: PreluraColors.grey,
          //     height: 25.h,
          //     width: 30.w,
          //   ),
          //   imageUrl: PreluraIcons.van,
          //   height: 190,
          //   width: 150,
          //   fit: BoxFit.cover,
          //   placeholder: (context, url) {
          //     return ShimmerBox(
          //       height: 25.h,
          //       width: 30.w,
          //     );
          //   },
          //   fadeInDuration: Duration.zero,
          //   fadeOutDuration: Duration.zero,
          // ),
        ),
        16.horizontalSpacing,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                capitalizeEachWord("Liverpool FC Football Jersey"),
                maxLines: 2,
                overflow: TextOverflow.ellipsis, // Truncate text
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
              ),
              10.verticalSpacing,

              BrandTextWidget(
                brand: Brand(name: "Nike", id: 0),
                customBrand: null,
                fontSize: 16,
              ),
              15.verticalSpacing,
              Text(
                "Size L",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: PreluraColors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: getDefaultSize(size: 16),
                    ),
              ),
              // if (widget.product.condition != null) ...[
              15.verticalSpacing,

              Text(
                "Used but in a good condition",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: PreluraColors.greyColor,
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(size: 16),
                    ),
              ),
              // ],
            ],
          ),
        ),
      ],
    );
  }
}
