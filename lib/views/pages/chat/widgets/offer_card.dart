import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../../widgets/custom_widget.dart';
import 'offer_product_card.dart';

class OfferCard extends ConsumerStatefulWidget {
  final bool isSender;
  final String conversationId;

  const OfferCard({
    super.key,
    required this.conversationId,
    required this.isSender,
  });

  @override
  ConsumerState<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends ConsumerState<OfferCard> {
  // State variables for the offer status
  OfferInfo offerInfo = OfferInfo();
  bool amTheSeller = false;
  bool isAccepted = false;
  bool isAccepting = false;
  bool isSendingOffer = false;
  bool isDeclined = false;
  bool isCancelled = false;
  bool isDeclining = false;
  UserModel? appUserInfo;
  final TextEditingController _offerController = TextEditingController();

  handleAccept() async {
    if (isAccepted || isDeclined) return;
    isAccepting = true;
    setState(() {});
    await ref
        .read(
          offerProvider.notifier,
        )
        .respondToOffer(
          context,
          actionType: Enum$OfferActionEnum.ACCEPT,
        );
    ref.refresh(messagesProvider(widget.conversationId));
    isAccepting = false;
    setState(() {});
  }

  Future<void> handleDecline() async {
    if (isAccepted || isDeclined) return;
    isDeclining = true;
    setState(() {});
    await ref
        .read(
          offerProvider.notifier,
        )
        .respondToOffer(
          context,
          actionType: Enum$OfferActionEnum.REJECT,
        );
    isDeclining = false;
    ref.refresh(messagesProvider(widget.conversationId));
    setState(() {});
  }

  Future<void> _sendCustomOffer() async {
    if (isSendingOffer) return;
    isSendingOffer = true;
    setState(() {});
    await ref
        .read(
          offerProvider.notifier,
        )
        .respondToOffer(
          context,
          offerPrice: double.parse(_offerController.text),
          actionType: Enum$OfferActionEnum.COUNTER,
        );
    isSendingOffer = false;
    ref.refresh(messagesProvider(widget.conversationId));
    setState(() {});
  }

  @override
  void initState() {
    appUserInfo = ref.read(userProvider).value;
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      offerInfo = ref.read(offerProvider).activeOffer!.offer!;
      isAccepted =
          offerInfo.children?.firstOrNull?.status?.toLowerCase() == "accepted";
      isDeclined = offerInfo.status?.toLowerCase() == "rejected";
      isCancelled = offerInfo.status?.toLowerCase() == "cancelled";
      amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("::::The offer info:::: ${jsonEncode(offerInfo)}");
    log("::::The offer info:::: $isAccepted");
    log("::::The offer info:::: $isDeclined");

    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            OfferProductCard(
              offerInfo: offerInfo,
              amTheSeller: amTheSeller,
              isSender: widget.isSender,
            ),
            10.verticalSpacing,
            if (offerInfo.children?.firstOrNull?.status?.toLowerCase() ==
                    "accepted" ||
                offerInfo.children?.firstOrNull?.status?.toLowerCase() ==
                    "rejected") ...[
              10.verticalSpacing,
              AppButton(
                width: double.infinity,
                onTap: () {},
                height: 45,
                bgColor: PreluraColors.primaryColor.withOpacity(0.7),
                text: isAccepted ? "Accepted" : "Declined",
              ),
              if (amTheSeller) ...[
                10.verticalSpacing,
                Text(
                  "Please wait for buyer to make a payment",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: PreluraColors.grey),
                )
              ],
            ] else ...[
              if (amTheSeller &&
                  offerInfo.children?.firstOrNull?.updatedBy !=
                      appUserInfo?.username) ...[
                10.verticalSpacing,
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        onTap: handleAccept,
                        loading: isAccepting,
                        text: "Accept",
                        textColor: Colors.white,
                      ),
                    ),
                    18.horizontalSpacing,
                    Expanded(
                      child: AppButton(
                        onTap: handleDecline,
                        loading: isDeclining,
                        text: "Decline",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                )
              ] else if (offerInfo.children?.firstOrNull?.updatedBy ==
                  appUserInfo?.username)
                Text(
                  "Offer sent, please wait for the Buyer's decision",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: PreluraColors.grey),
                )
              else
                Text(
                  "Offer sent, please wait for the Seller's decision",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: PreluraColors.grey),
                )
            ],
            if (offerInfo.children?.firstOrNull?.status?.toLowerCase() ==
                    "pending" ||
                offerInfo.children?.firstOrNull?.status?.toLowerCase() ==
                    "countered") ...[
              10.verticalSpacing,
              AppButton(
                height: 45,
                width: double.infinity,
                loading: isSendingOffer,
                onTap: () async {
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
                                log(":::The offer amount:: ${_offerController.text}");
                                _sendCustomOffer();
                              },
                              text: "Send",
                              width: 130,
                              height: 45,
                            )
                          ],
                        ),
                      ));
                },
                textColor: Colors.white,
                bgColor: PreluraColors.primaryColor,
                text: "Send a custom offer...",
              )
            ]
          ],
        ),
      ),
    );
  }
}
