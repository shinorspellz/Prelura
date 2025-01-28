import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../core/utils/utils.dart';
import '../../../../res/colors.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_button.dart';
import '../../search/search_screen.dart';
import '../view/user_wardrobe.dart';

class MultiDiscountBottomView extends ConsumerWidget {
  const MultiDiscountBottomView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(multiProducts).toList();
    final total = products.fold<double>(0, (sum, product) {
      if (product.discountPrice != null &&
          double.parse(product.discountPrice!) != 0.00) {
        return sum +
            calculateDiscountedAmount(
              price: product.price,
              discount: double.parse(product.discountPrice!).toInt(),
            );
      }
      return sum + product.price;
    });

    if (products.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 140,
                    child: ListView.separated(
                      padding:
                          const EdgeInsets.only(left: 15, top: 16, bottom: 20),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          16.horizontalSpacing,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        final imageUrl = product.imagesUrl.isNotEmpty
                            ? product.imagesUrl.first.url
                            : null;

                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getDefaultBorderRadius()),
                              child: SizedBox(
                                height: 100,
                                width: 80,
                                child: CachedNetworkImage(
                                  imageUrl: imageUrl ?? "",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      const ShimmerBox(
                                    height: 70,
                                    width: 70,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    color: PreluraColors.grey,
                                  ),
                                  fadeInDuration: Duration.zero,
                                  fadeOutDuration: Duration.zero,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -8,
                              right: -8,
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: PreluraColors.greyColor,
                                      fill: 1,
                                    ),
                                    onTap: () {
                                      ref
                                          .read(multiProducts.notifier)
                                          .removeProduct(product);
                                    }),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: products.length,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text:
                            "Buy now (£${formatDynamicString(total.toString())})",
                        onTap: () {},
                      ),
                    ),
                    18.horizontalSpacing,
                    Expanded(
                      child: AppButton(
                        text: "Send an offer",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
