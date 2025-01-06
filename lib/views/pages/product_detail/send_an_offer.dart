import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/utils/hex_color.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/utils.dart';
import '../../../model/product/product_model.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/brand_text_widget.dart';

@RoutePage()
class SendAnOfferScreen extends ConsumerWidget {
  const SendAnOfferScreen({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreluraAppBar(
        centerTitle: true,
        appbarTitle: "Send an Offer",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: product.imagesUrl.first.thumbnail,
                    height: 21.h,
                    width: 35.w,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return ShimmerBox(
                        height: 25.h,
                        width: 30.w,
                      );
                    },
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                  ),
                ),
                16.horizontalSpacing,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        capitalizeEachWord(product.name),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // Truncate text
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      12.verticalSpacing,
                      if (product.brand != null || product.customBrand != null)
                        BrandTextWidget(
                          brand: product.brand,
                          customBrand: product.customBrand,
                          fontSize: 16,
                        ),
                      12.verticalSpacing,
                      Text(
                        "Size ${product.size?.name ?? ''}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: PreluraColors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: getDefaultSize(size: 16),
                            ),
                      ),
                      if (product.condition != null) ...[
                        12.verticalSpacing,
                        Text(
                          product.condition!.simpleName,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: PreluraColors.greyColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: getDefaultSize(size: 16),
                                  ),
                        ),
                      ],
                      12.verticalSpacing,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "£ ${formatDynamicString(product.price.toString())}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(size: 16),
                                  decoration: product.discountPrice != null
                                      ? TextDecoration.lineThrough
                                      : null,
                                  color: product.discountPrice != null
                                      ? !context.isDarkMode
                                          ? Colors.grey
                                          : Colors.white30
                                      : null,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          4.horizontalSpacing,
                          if (product.discountPrice != null)
                            // 10.horizontalSpacing,
                            Text(
                              "£ ${formatDynamicString(calculateDiscountedAmount(
                                price: product.price,
                                discount: double.parse(product.discountPrice!)
                                    .toInt(),
                              ).toString())}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: getDefaultSize(size: 16),
                                  ),
                            ),
                          // ],

                          Spacer(),
                          if (product.discountPrice != null)
                            Container(
                              // height: 30,
                              // width: 50,
                              decoration: BoxDecoration(
                                color: '8d100f'.fromHex,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              // alignment: Alignment.center,
                              child: Text(
                                ' ${double.parse(product.discountPrice!).toInt()}%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: getDefaultSize(size: 16),
                                    ),
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            32.verticalSpacing,
            Row(
              children: [
                SuggestionButton(price: '£40', discount: '-5%'),
                16.horizontalSpacing,
                SuggestionButton(price: '£42.5', discount: '-10%'),
              ],
            ),
            24.verticalSpacing,
            PreluraAuthTextField(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                showPrimaryBorder: true),
            32.verticalSpacing,
            AppButton(
              height: 50,
              width: double.infinity,
              fontWeight: FontWeight.w600,
              onTap: () {},
              text: "Semd Offer",
            )
          ])),
    );
  }

  Widget SuggestionButton({required String price, required String discount}) {
    return Container(
      width: 43.w,
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      decoration: BoxDecoration(
        color: PreluraColors.primaryColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price,
            style: TextStyle(
              fontSize: getDefaultSize(size: 16),
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            discount,
            style: TextStyle(
              fontSize: getDefaultSize(),
              fontWeight: FontWeight.bold,
              color: Color(0xffcb89cf),
            ),
          ),
        ],
      ),
    );
  }
}
