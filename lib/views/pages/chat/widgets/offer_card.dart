import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../../widgets/custom_widget.dart';
import 'offer_product_card.dart';

class OfferCard extends ConsumerStatefulWidget {
  final MessageModel chatInfo;
  final bool isSender;
  const OfferCard({
    super.key,
    required this.chatInfo,
    required this.isSender,
  });

  @override
  ConsumerState<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends ConsumerState<OfferCard> {
  // State variables for the offer status
  OfferInfo offerInfo = OfferInfo();
  bool isAccepted = false;
  bool isAccepting = false;
  bool isDeclined = false;
  bool isDeclining = false;
  final TextEditingController _offerController = TextEditingController();

  handleAccept() async {
    isAccepting = true;
    setState(() {});
    await ref
        .read(
          offerProvider.notifier,
        )
        .respondToOffer(
          context,
          offerId: offerInfo.id,
          actionType: Enum$OfferActionEnum.ACCEPT,
        );
    isAccepting = false;
    setState(() {});
  }

  Future<void> handleDecline() async {
    isDeclining = true;
    setState(() {});
    await ref
        .read(
          offerProvider.notifier,
        )
        .respondToOffer(
          context,
          offerId: offerInfo.id,
          actionType: Enum$OfferActionEnum.REJECT,
        );
    isDeclining = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    offerInfo = offerInfoFromJson(widget.chatInfo.text);
    // log("::::The offer info:::: ${jsonEncode(offerInfo)}");

    final offerState = ref.watch(offerProvider);
    isAccepted = offerState.offerState == "Accepted";
    isDeclined = offerState.offerState == "Declined";
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              ProfilePictureWidget(
                height: 60,
                width: 60,
                profilePicture: "${offerInfo.buyer?.thumbnailUrl}",
                username: "${offerInfo.buyer?.username}",
              ),
              16.horizontalSpacing,
              HighlightUserName(
                isRead: false,
                highlightColor: PreluraColors.primaryColor,
                message:
                    "${widget.isSender ? "You" : offerInfo.buyer?.username} Offered £${offerInfo.offerPrice}",
                username: "offered",
              ),
            ],
          ),
          12.verticalSpacing,
          OfferProductCard(
            offerInfo: offerInfo,
          ),
          10.verticalSpacing,
          if (isAccepted) ...[
            10.verticalSpacing,
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
            if (!widget.isSender) ...[
              10.verticalSpacing,
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      onTap: handleAccept,
                      loading: isAccepting,
                      isDisabled: isAccepted || isDeclined,
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
                      loading: isDeclining,
                      isDisabled: isAccepted || isDeclined,
                      text: isDeclined ? "Declined" : "Decline",
                      textColor: Colors.white,
                      bgColor: isDeclined || isAccepted
                          ? PreluraColors.primaryColor.withOpacity(0.7)
                          : PreluraColors.primaryColor,
                      // isDisabled: isAccepted || isDeclined,
                    ),
                  ),
                ],
              )
            ] else
              Text(
                "Please wait for the seller decision",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: PreluraColors.grey),
              )
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
