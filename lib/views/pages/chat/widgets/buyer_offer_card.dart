import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../model/product/product_model.dart';
import '../../../../res/colors.dart';
import '../../../../res/images.dart';
import '../../../../res/utils.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/brand_text_widget.dart';
import '../../../widgets/custom_widget.dart';
import '../../../widgets/price_field.dart';

class BuyerOfferCard extends ConsumerStatefulWidget {
  const BuyerOfferCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BuyerOfferCardState();
}

class _BuyerOfferCardState extends ConsumerState<BuyerOfferCard> {
  final TextEditingController _offerController = TextEditingController();

  @override
  void dispose() {
    _offerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: PreluraIcons.mugShot,
                  height: 16.h,
                  width: 30.w,
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
              Container(
                width: 40.w,
                height: 16.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      capitalizeEachWord("Liverpool FC Football Club"),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Truncate text
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    12.verticalSpacing,
                    const Spacer(),
                    BrandTextWidget(
                      brand: Brand(name: "Nike", id: 0),
                      customBrand: null,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
          20.verticalSpacing,
          AppButton(
            width: double.infinity,
            onTap: () {},
            height: 45,
            bgColor: PreluraColors.primaryColor.withOpacity(0.7),
            text: "Declined",
          ),
          24.verticalSpacing,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  height: 45,

                  onTap: () {
                    // context.router.push(PaymentRoute(product: null
                    // ))
                  },
                  text: "Buy now",
                  bgColor: PreluraColors.primaryColor,
                  // isDisabled: isAccepted || isDeclined,
                ),
              ),
              32.horizontalSpacing,
              Expanded(
                child: AppButton(
                  onTap: () {
                    showCustomDialog(context,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 26),
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: context.theme.scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              PriceFieldWidget(
                                textController: _offerController,
                                width: 65.6.w,
                              ),
                              24.verticalSpacing,
                              AppButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                text: "Send",
                                width: 130,
                                height: 45,
                              )
                            ],
                          ),
                        ));
                  },
                  text: "Customm offer",
                  height: 45,

                  bgColor: PreluraColors.primaryColor,
                  // isDisabled: isAccepted || isDeclined,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
