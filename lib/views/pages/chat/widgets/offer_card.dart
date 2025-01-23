import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../../widgets/custom_widget.dart';
import 'offer_product_card.dart';

// class OfferCard extends ConsumerStatefulWidget {
//   final bool isSender;
//   final String conversationId;
//
//   const OfferCard({
//     super.key,
//     required this.conversationId,
//     required this.isSender,
//   });
//
//   @override
//   ConsumerState<OfferCard> createState() => _OfferCardState();
// }
//
// class _OfferCardState extends ConsumerState<OfferCard> {
//   OfferInfo offerInfo = OfferInfo();
//   UserModel? appUserInfo;
//   final TextEditingController _offerController = TextEditingController();
//
//   bool isAccepted = false;
//   bool isDeclined = false;
//   bool isCancelled = false;
//   bool isAccepting = false;
//   bool isDeclining = false;
//   bool isSendingOffer = false;
//   bool amTheSeller = false;
//
//   @override
//   void initState() {
//     super.initState();
//     appUserInfo = ref.read(userProvider).value;
//     WidgetsBinding.instance.addPostFrameCallback((_) => _initializeOfferInfo());
//   }
//
//   void _initializeOfferInfo() {
//     final activeOffer = ref.read(offerProvider).activeOffer?.offer;
//     if (activeOffer != null) {
//       offerInfo = activeOffer;
//       isAccepted = _checkOfferStatus("accepted");
//       isDeclined = _checkOfferStatus("rejected");
//       isCancelled = offerInfo.status?.toLowerCase() == "cancelled";
//       amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;
//       setState(() {});
//     }
//   }
//
//   bool _checkOfferStatus(String status) {
//     log(":::::The status iss::: ${offerInfo.children?.firstOrNull?.status?.toLowerCase()}");
//     return offerInfo.children?.firstOrNull?.status?.toLowerCase() == status;
//   }
//
//   // Future<void> _handleAccept() async {
//   //   if (isAccepted || isDeclined) return;
//   //   await _updateOfferStatus(
//   //       Enum$OfferActionEnum.ACCEPT, () => isAccepting = !isAccepting);
//   // }
//   //
//   // Future<void> _handleDecline() async {
//   //   if (isAccepted || isDeclined) return;
//   //   await _updateOfferStatus(
//   //       Enum$OfferActionEnum.REJECT, () => isDeclining = !isDeclining);
//   // }
//
//   Future<void> _sendCustomOffer() async {
//     if (isSendingOffer) return;
//     isSendingOffer = true;
//     setState(() {});
//     await ref.read(offerProvider.notifier).respondToOffer(
//           context,
//           offerPrice: double.parse(_offerController.text),
//           actionType: Enum$OfferActionEnum.COUNTER,
//         );
//     isSendingOffer = false;
//     ref.refresh(messagesProvider(widget.conversationId));
//     setState(() {});
//   }
//
//   Future<void> _updateOfferStatus(
//       Enum$OfferActionEnum actionType, VoidCallback setLoading) async {
//     setLoading();
//     setState(() {});
//     await ref
//         .read(offerProvider.notifier)
//         .respondToOffer(context, actionType: actionType);
//     ref.refresh(messagesProvider(widget.conversationId));
//     setLoading();
//     setState(() {});
//   }
//
//   Widget _buildActionButton(String text, VoidCallback onTap, bool isLoading) {
//     return Expanded(
//       child: AppButton(
//         onTap: onTap,
//         loading: isLoading,
//         text: text,
//         textColor: Colors.white,
//       ),
//     );
//   }
//
//   Widget _buildCustomOfferButton() {
//     return AppButton(
//       height: 45,
//       width: double.infinity,
//       loading: isSendingOffer,
//       onTap: () {
//         showCustomDialog(
//           context,
//           child: Container(
//             padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
//             margin: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: context.theme.scaffoldBackgroundColor,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Column(
//               children: [
//                 PriceFieldWidget(
//                   textController: _offerController,
//                   width: 65.6.w,
//                 ),
//                 const SizedBox(height: 24),
//                 AppButton(
//                   onTap: () {
//                     Navigator.pop(context);
//                     _sendCustomOffer();
//                   },
//                   text: "Send",
//                   width: 130,
//                   height: 45,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       textColor: Colors.white,
//       bgColor: PreluraColors.primaryColor,
//       text: "Send a custom offer...",
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     log("Offer Info: ${jsonEncode(offerInfo)}");
//     return Card(
//       color: Colors.transparent,
//       shadowColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             OfferProductCard(
//               offerInfo: offerInfo,
//             ),
//             // const SizedBox(height: 10),
//             // if (isAccepted || isDeclined)
//             //   Column(
//             //     children: [
//             //       const SizedBox(height: 10),
//             //       AppButton(
//             //         width: double.infinity,
//             //         onTap: () {},
//             //         height: 45,
//             //         bgColor: PreluraColors.primaryColor.withOpacity(0.7),
//             //         text: isAccepted ? "Accepted" : "Declined",
//             //       ),
//             //       if (amTheSeller) const SizedBox(height: 10),
//             //       Text(
//             //         "Please wait for buyer to make a payment",
//             //         style: Theme.of(context)
//             //             .textTheme
//             //             .bodyMedium
//             //             ?.copyWith(color: PreluraColors.grey),
//             //       ),
//             //     ],
//             //   )
//             // else if (amTheSeller &&
//             //     offerInfo.children?.firstOrNull?.createdBy !=
//             //         appUserInfo?.username)
//             //   Row(
//             //     children: [
//             //       _buildActionButton("Accept", _handleAccept, isAccepting),
//             //       const SizedBox(width: 18),
//             //       _buildActionButton("Decline", _handleDecline, isDeclining),
//             //     ],
//             //   )
//             // else
//             //   Text(
//             //     offerInfo.children?.firstOrNull?.createdBy ==
//             //             appUserInfo?.username
//             //         ? "Offer sent, please wait for the Buyer's decision"
//             //         : "Offer sent, please wait for the Seller's decision",
//             //     style: Theme.of(context)
//             //         .textTheme
//             //         .bodyMedium
//             //         ?.copyWith(color: PreluraColors.grey),
//             //   ),
//             // if (amTheSeller && _checkOfferStatus("accepted") ||
//             //     _checkOfferStatus("rejected"))
//             //   _buildCustomOfferButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }

///
///
///
class OfferFirstCard extends ConsumerStatefulWidget {
  const OfferFirstCard({
    super.key,
    required this.conversationInfo,
    required this.amTheSeller,
    required this.isSender,
  });

  final ConversationModel conversationInfo;
  final bool amTheSeller;
  final bool isSender;

  @override
  ConsumerState<OfferFirstCard> createState() => _OfferFirstCardState();
}

class _OfferFirstCardState extends ConsumerState<OfferFirstCard> {
  OfferInfo offerInfo = OfferInfo();
  UserModel? appUserInfo;
  final TextEditingController _offerController = TextEditingController();

  bool isAccepted = false;
  bool isDeclined = false;
  bool isCancelled = false;
  bool isAccepting = false;
  bool isDeclining = false;
  bool isSendingOffer = false;
  bool amTheSeller = false;

  @override
  void initState() {
    super.initState();
    appUserInfo = ref.read(userProvider).value;
    WidgetsBinding.instance.addPostFrameCallback((_) => _initializeOfferInfo());
  }

  void _initializeOfferInfo() {
    final activeOffer = ref.read(offerProvider).activeOffer?.offer;
    if (activeOffer != null) {
      offerInfo = activeOffer;
      isAccepted = _checkOfferStatus("accepted");
      isDeclined = _checkOfferStatus("rejected");
      isCancelled = offerInfo.status?.toLowerCase() == "cancelled";
      amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;
      setState(() {});
    }
  }

  bool _checkOfferStatus(String status) {
    log(":::::The status iss::: ${offerInfo.children?.firstOrNull?.status?.toLowerCase()}");
    return offerInfo.children?.firstOrNull?.status?.toLowerCase() == status;
  }

  Future<void> _handleAccept() async {
    if (isAccepted || isDeclined) return;
    await _updateOfferStatus(
        Enum$OfferActionEnum.ACCEPT, () => isAccepting = !isAccepting);
  }

  Future<void> _handleDecline() async {
    if (isAccepted || isDeclined) return;
    await _updateOfferStatus(
        Enum$OfferActionEnum.REJECT, () => isDeclining = !isDeclining);
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
    ref.refresh(messagesProvider(widget.conversationInfo.id));
    setState(() {});
  }

  Future<void> _updateOfferStatus(
      Enum$OfferActionEnum actionType, VoidCallback setLoading) async {
    setLoading();
    setState(() {});
    await ref
        .read(offerProvider.notifier)
        .respondToOffer(context, actionType: actionType);
    ref.refresh(messagesProvider(widget.conversationInfo.id));
    setLoading();
    setState(() {});
  }

  Widget _buildActionButton(String text, VoidCallback? onTap, bool isLoading) {
    return Expanded(
      child: AppButton(
        onTap: onTap,
        loading: isLoading,
        text: text,
        bgColor: PreluraColors.primaryColor,
        // isDisabled: onTap == null,
        textColor: Colors.white,
      ),
    );
  }

  Widget _buildCustomOfferButton({String? text}) {
    return AppButton(
      height: 45,
      width: double.infinity,
      loading: isSendingOffer,
      onTap: () {
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
      },
      textColor: Colors.white,
      bgColor: PreluraColors.primaryColor,
      text: text ?? "Send a counter offer...",
    );
  }

  @override
  Widget build(BuildContext context) {
    final OfferInfo offerInfo = widget.conversationInfo.offer!;
    String status = offerInfo.status!.toString().toLowerCase();
    Size deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(children: [
        Row(
            mainAxisAlignment: widget.isSender
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (widget.amTheSeller)
                ProfilePictureWidget(
                  height: 50,
                  width: 50,
                  profilePicture: "${offerInfo.buyer?.profilePictureUrl}",
                  username: offerInfo.buyer?.username,
                ),
              8.horizontalSpacing,
              Stack(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: HighlightUserName(
                    isRead: false,
                    highlightColor: PreluraColors.primaryColor,
                    message:
                        "${widget.isSender ? "You" : offerInfo.buyer?.username} Offered £${offerInfo.offerPrice}",
                    username: "offered",
                  ),
                ),
                if (status != "pending")
                  Positioned(
                    bottom: 0,
                    left: widget.isSender ? null : 1,
                    right: widget.isSender ? 1 : null,
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
                  ),
                // Align(
                //   alignment: widget.amTheSeller
                //       ? Alignment.centerLeft
                //       : Alignment.centerRight,
                //   child: Text(
                //     status == "pending"
                //         ? "please wait for seller to respond"
                //         : status
                //             .replaceFirst("rejected", "Declined")
                //             .replaceFirst("cancelled", "Declined"),
                //     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //           color: PreluraColors.grey,
                //           fontSize: 12,
                //         ),
                //   ),
                // ),
              ]),
            ]),
        if (widget.amTheSeller && status == "pending")
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(children: [
              _buildActionButton(
                status == "accepted" ? "Accepted" : "Accept",
                status != "pending" ? null : _handleAccept,
                isAccepting,
              ),
              const SizedBox(width: 18),
              _buildActionButton(
                (status == "rejected" || status == "cancelled")
                    ? "Declined"
                    : "Decline",
                status != "pending" ? null : _handleDecline,
                isDeclining,
              ),
            ]),
          ),
        // else
        //   Padding(
        //     padding: EdgeInsets.only(
        //         top: widget.amTheSeller ? 0 : 10,
        //         left: widget.amTheSeller ? 58 : 0),
        //     child: Align(
        //       alignment: widget.amTheSeller
        //           ? Alignment.centerLeft
        //           : Alignment.centerRight,
        //       child: Text(
        //         status == "pending"
        //             ? "please wait for seller to respond"
        //             : status
        //                 .replaceFirst("rejected", "Declined")
        //                 .replaceFirst("cancelled", "Declined"),
        //         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //               color: PreluraColors.grey,
        //               fontSize: 12,
        //             ),
        //       ),
        //     ),
        //   ),
        if (status == "rejected") ...[
          addVerticalSpacing(!amTheSeller ? 30 : 10),
          _buildCustomOfferButton(text: amTheSeller ? null : "Send new offer"),
        ],
      ]),
    );
  }
}
