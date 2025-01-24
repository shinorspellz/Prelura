import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/custom_widget.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:sizer/sizer.dart';

import 'offer_product_card.dart';

class OfferSubCardBox extends ConsumerStatefulWidget {
  final OfferSubStateInfo eventInfo;
  final UserModel appUserInfo;

  const OfferSubCardBox({
    super.key,
    required this.eventInfo,
    required this.appUserInfo,
  });

  @override
  OfferSubCardBoxState createState() => OfferSubCardBoxState();
}

class OfferSubCardBoxState extends ConsumerState<OfferSubCardBox> {
  bool isAccepting = false;
  bool isBuying = false;
  bool isDeclining = false;
  bool isSendingOffer = false;
  final TextEditingController _offerController = TextEditingController();

  Future<void> handleOfferResponse(Enum$OfferActionEnum actionType) async {
    if (isAccepting || isDeclining) return;

    setState(() {
      if (actionType == Enum$OfferActionEnum.ACCEPT) {
        isAccepting = true;
      } else {
        isDeclining = true;
      }
    });

    await ref.read(offerProvider.notifier).respondToOffer(
          context,
          actionType: actionType,
        );

    setState(() {
      isAccepting = false;
      isDeclining = false;
    });
  }

  Widget buildActionButton({
    required VoidCallback onTap,
    required bool isLoading,
    required String text,
    required bool isDisabled,
  }) {
    return Expanded(
      child: AppButton(
        onTap: onTap,
        loading: isLoading,
        text: text,
        textColor: Colors.white,
        bgColor: isDisabled
            ? PreluraColors.primaryColor.withOpacity(0.7)
            : PreluraColors.primaryColor,
      ),
    );
  }

  Future<void> _handleAccept() async {
    await _updateOfferStatus(
        Enum$OfferActionEnum.ACCEPT, () => isAccepting = !isAccepting);
  }

  Future<void> _handleDecline() async {
    await _updateOfferStatus(
        Enum$OfferActionEnum.REJECT, () => isDeclining = !isDeclining);
  }

  Future<void> _updateOfferStatus(
      Enum$OfferActionEnum actionType, VoidCallback setLoading) async {
    setLoading();
    setState(() {});
    await ref
        .read(offerProvider.notifier)
        .respondToOffer(context, actionType: actionType);
    ref.refresh(messagesProvider(ref.read(offerProvider).activeOffer!.id));
    setLoading();
    setState(() {});
  }

  Future<void> _sendCustomOffer() async {
    if (isSendingOffer) return;
    isSendingOffer = true;
    setState(() {});
    await ref.read(offerProvider.notifier).respondToOffer(
          context,
          offerPrice: double.parse(_offerController.text),
          actionType: Enum$OfferActionEnum.COUNTER,
        );
    isSendingOffer = false;
    ref.refresh(messagesProvider(ref.read(offerProvider).activeOffer!.id));
    setState(() {});
  }

  Widget _buildCustomOfferButton({String? text}) {
    bool isSold = text == "Sold!";

    return AppButton(
      height: isSold ? 70 : 45,
      radius: 0,
      width: double.infinity,
      loading: isSendingOffer,
      onTap: isSold ? null : _showCustomOfferDialog,
      textColor: Colors.white,
      bgColor: PreluraColors.primaryColor,
      text: text ?? "Send a counter offer...",
    );
  }

  _showCustomOfferDialog() {
    final OfferInfo offerInfo = ref.read(offerProvider).activeOffer!.offer!;
    showCustomDialog(
      context,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            OfferProductCard(
              offerInfo: offerInfo,
              showPrice: true,
              boxWidth: 60.w,
            ),
            addVerticalSpacing(10),
            PriceFieldWidget(
              textController: _offerController,
              width: 65.6.w,
            ),
            const SizedBox(height: 24),
            AppButton(
              onTap: () {
                Navigator.pop(context);
                _sendCustomOffer();
              },
              text: "Send",
              width: 130,
              height: 45,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ConversationModel offerInfo = ref.read(offerProvider).activeOffer!;
    final bool amTheSeller = widget.appUserInfo.username ==
        offerInfo.offer?.product?.seller?.username;
    final bool isSender =
        widget.appUserInfo.username == widget.eventInfo.createdBy;
    final String? offeredPrice = widget.eventInfo.offerPrice;
    final String status = widget.eventInfo.status?.toLowerCase() ?? "";

    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          addHorizontalSpacing(15),
          if (!isSender)
            ProfilePictureWidget(
              height: 55,
              width: 55,
              profilePicture:
                  "${!amTheSeller ? offerInfo.offer?.product?.seller?.profilePictureUrl : offerInfo.offer?.buyer?.profilePictureUrl}",
              username: widget.eventInfo.createdBy,
            ),
          8.horizontalSpacing,
          Stack(children: [
            Container(
              height: 40,
              alignment: Alignment.center,
              // padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(
                //   color: Colors.grey[300]!.withOpacity(0.5),
                //   width: 1,
                // ),
              ),
              child: HighlightUserName(
                isRead: false,
                highlightColor: PreluraColors.primaryColor,
                message:
                    "${isSender ? "You" : widget.eventInfo.createdBy} offered £${offeredPrice.toString().formatCurrency()}",
                username: "offered",
              ),
            ),
            if (status != "pending" &&
                status != "countered" &&
                !(status == "accepted" && amTheSeller))
              Positioned(
                bottom: -2,
                left: isSender ? null : 1,
                right: isSender ? 1 : null,
                child: Text(
                  status
                      .replaceFirst("rejected", "Declined")
                      .replaceFirst("cancelled", "Declined")
                      .capitalize(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: PreluraColors.grey,
                        fontSize: 12,
                      ),
                ),

                // HighlightUserName(
                //   isRead: false,
                //   highlightColor: PreluraColors.grey,
                //   weight: FontWeight.w400,
                //   message: status
                //       .replaceFirst("rejected", "Declined")
                //       .replaceFirst("cancelled", "Declined"),
                //   textSize: 12,
                //   username: "status",
                // ),
              )
          ]),
          addHorizontalSpacing(15),
        ],
      ),
      if (!amTheSeller && status == "countered" && !isSender) ...[
        10.verticalSpacing,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            buildActionButton(
              onTap: handleOfferBuying,
              isLoading: isAccepting,
              text: "Buy now",
              isDisabled: isAccepting || isDeclining,
            ),
            const SizedBox(width: 18),
            Expanded(
              child: _buildCustomOfferButton(
                text: "Custom Offer",
              ),
            ),
          ]),
        ),
      ],
      if (amTheSeller && status == "countered" && !isSender)
        Padding(
          padding: EdgeInsets.only(
            top: 12,
            left: 20,
            right: 20,
          ),
          child: Row(children: [
            buildActionButton(
              text: "Accept",
              onTap: _handleAccept,
              isLoading: isAccepting,
              isDisabled: false,
            ),
            const SizedBox(width: 18),
            buildActionButton(
              text: "Decline",
              onTap: _handleDecline,
              isLoading: isDeclining,
              isDisabled: false,
            ),
          ]),
        ),
      if (!amTheSeller && status == "countered" && isSender) ...[
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Please wait for seller to respond",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PreluraColors.grey,
                    fontSize: 12,
                  ),
            ),
          ),
        ),
      ],
      if (status == "rejected") ...[
        addVerticalSpacing(!amTheSeller ? 30 : 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _buildCustomOfferButton(
              text: amTheSeller ? null : "Send new offer"),
        ),
      ],
      if (status == "accepted" && amTheSeller) ...[
        // addVerticalSpacing(20),
        // Text(
        //   "Please wait for buyer to make payment",
        //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //         color: PreluraColors.grey,
        //         fontSize: 12,
        //       ),
        // ),
        ///
        ///
        ///
        // addVerticalSpacing(20),
        // _buildCustomOfferButton(text: "Sold!"),
        ///
        ///
        ///
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Align(
            alignment: Alignment.center,
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        "Offer accepted! Please wait for the buyer to make a payment. Made a mistake? ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: PreluraColors.grey,
                          fontSize: 12,
                        ),
                    children: [
                      TextSpan(
                        text: " Send a new offer",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: PreluraColors.primaryColor,
                          fontSize: 12,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _showCustomOfferDialog();
                          },
                      )
                    ])),
          ),
        ),
      ],
      if (status == "accepted" && !amTheSeller) ...[
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Payment made, please wait for the seller to send the item.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PreluraColors.grey,
                    fontSize: 12,
                  ),
            ),
          ),
        ),
      ],
      if (status == "accepted" && !amTheSeller) ...[
        // addVerticalSpacing(20),
        // Text(
        //   "Please wait for buyer to make payment",
        //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //         color: PreluraColors.grey,
        //         fontSize: 12,
        //       ),
        // ),
        addVerticalSpacing(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            // Expanded(
            //   child: Text(""),
            // ),
            buildActionButton(
              onTap: handleOfferBuying,
              isLoading: isBuying,
              text: "Buy now",
              isDisabled: isBuying,
            ),
            // Expanded(
            //   child: Text(""),
            // ),
          ]),
        ),
      ],
    ]);
  }

  handleOfferBuying() async {
    isBuying = true;
    setState(() {});
    try {
      int productId =
          int.parse(ref.read(offerProvider).activeOffer!.offer!.product!.id!);
      final repo = ref.read(productRepo);

      final productInfo = await repo.getProduct(productId);
      context.router.push(PaymentRoute(product: productInfo));
    } catch (e) {
      print("Error in handleOfferBuying: $e");
    } finally {
      isBuying = false;
      setState(() {});
    }
  }
}
