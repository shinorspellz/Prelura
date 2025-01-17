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
          offerId: int.parse(offerInfo.id!),
          actionType: Enum$OfferActionEnum.ACCEPT,
        );
    ref.invalidate(messagesProvider(widget.conversationId));
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
          offerId: int.parse(offerInfo.id!),
          actionType: Enum$OfferActionEnum.REJECT,
        );
    isDeclining = false;
    ref.invalidate(messagesProvider(widget.conversationId));
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
          offerId: int.parse(offerInfo.id!),
          offerPrice: double.parse(_offerController.text),
          actionType: Enum$OfferActionEnum.COUNTER,
        );
    isSendingOffer = false;
    ref.invalidate(messagesProvider(widget.conversationId));
    setState(() {});
  }

  @override
  void initState() {
    appUserInfo = ref.read(userProvider).value;
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      offerInfo = ref.read(offerProvider).activeOffer!.offer!;
      isAccepted = offerInfo.status?.toLowerCase() == "accepted";
      isDeclined = offerInfo.status?.toLowerCase() == "rejected";
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

    // final offerState = ref.watch(offerProvider);
    // isAccepted = offerState.offerState == "Accepted";
    // isDeclined = offerState.offerState == "Declined";
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
              if ((isDeclined || isAccepted) || !widget.isSender) ...[
                10.verticalSpacing,
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        onTap: handleAccept,
                        loading: isAccepting,
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
                  "Offer sent, please wait for the Seller's decision",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: PreluraColors.grey),
                )
            ],
            if (isDeclined && amTheSeller) ...[
              24.verticalSpacing,
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
