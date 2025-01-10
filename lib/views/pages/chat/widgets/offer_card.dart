import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../../widgets/custom_widget.dart';
import 'offer_product_card.dart';

class OfferCard extends ConsumerStatefulWidget {
  const OfferCard({super.key});

  @override
  ConsumerState<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends ConsumerState<OfferCard> {
  // State variables for the offer status
  bool isAccepted = false;
  bool isDeclined = false;
  final TextEditingController _offerController = TextEditingController();

  void handleAccept() {
    if (!isAccepted && !isDeclined) {
      setState(() {
        isAccepted = true;
        isDeclined = false;
      });
    }
  }

  void handleDecline() {
    if (!isDeclined && !isAccepted) {
      setState(() {
        isAccepted = false;
        isDeclined = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final offerState = ref.watch(offerProvider);
    isAccepted = offerState.offerState == "Accepted";
    isDeclined = offerState.offerState == "Declined";
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Row(
          //   children: [
          //     ProfilePictureWidget(
          //       height: 60,
          //       width: 60,
          //       profilePicture: "",
          //       username: "Ayodeji",
          //     ),
          //     16.horizontalSpacing,
          //     HighlightUserName(
          //       isRead: false,
          //       highlightColor: PreluraColors.primaryColor,
          //       message: "Ayodeji Offered £78",
          //       username: "offered",
          //     ),
          //   ],
          // ),
          // 12.verticalSpacing,
          OfferProductCard(),
          32.verticalSpacing,
          if (isAccepted) ...[
            AppButton(
              width: double.infinity,
              onTap: () {},
              height: 45,
              bgColor: PreluraColors.primaryColor.withOpacity(0.7),
              text: "Accepted",
            ),
            10.verticalSpacing,
            Text(
              "Please wait for buyer to make a payment",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: PreluraColors.grey),
            )
          ] else ...[
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    onTap: handleAccept,
                    text: isAccepted ? "Accepted" : "Accept",
                    textColor: Colors.white,
                    bgColor: isAccepted || isDeclined
                        ? PreluraColors.primaryColor.withOpacity(0.7)
                        : PreluraColors.primaryColor,
                    // isDisabled: isAccepted || isDeclined,
                  ),
                ),
                18.horizontalSpacing,
                Expanded(
                  child: AppButton(
                    onTap: handleDecline,
                    text: isDeclined ? "Declined" : "Decline",
                    textColor: Colors.white,
                    bgColor: isDeclined || isAccepted
                        ? PreluraColors.primaryColor.withOpacity(0.7)
                        : PreluraColors.primaryColor,
                    // isDisabled: isAccepted || isDeclined,
                  ),
                ),
              ],
            ),
          ],
          if (isDeclined) ...[
            24.verticalSpacing,
            AppButton(
              height: 45,
              width: double.infinity,
              onTap: () async {
                // await showAnimatedDialog(
                //     child: Container(
                //       height: 100.h,
                //       width: 100.w,
                //       child: Center(
                //         child: Material(
                //           color: Colors.transparent,
                //           child: Column(
                //             children: [
                //               PriceFieldWidget(
                //                   textController: _offerController),
                //               16.verticalSpacing,
                //               AppButton(onTap: () {}, text: "Send")
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     context: context);

                showCustomDialog(context,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 26),
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
              bgColor: PreluraColors.primaryColor,
              text: "Send a custom offer...",
            )
          ]
        ],
      ),
    );
  }
}
