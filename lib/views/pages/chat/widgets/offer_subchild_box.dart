import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/custom_widget.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/price_field.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:sizer/sizer.dart';

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
      text: text ?? "Send a custom offer...",
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
              height: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey[300]!.withOpacity(0.5),
                  width: 1,
                ),
              ),
              child: HighlightUserName(
                isRead: false,
                highlightColor: PreluraColors.primaryColor,
                message:
                    "${isSender ? "You" : widget.eventInfo.createdBy} offered £$offeredPrice",
                username: "offered",
              ),
            ),
            if (status != "pending" && status != "countered")
              Positioned(
                bottom: 0,
                left: isSender ? null : 0,
                right: isSender ? 0 : null,
                child: HighlightUserName(
                  isRead: false,
                  highlightColor: PreluraColors.grey,
                  // status == "cancelled"
                  //     ? Colors.red
                  //     : status == "accepted"
                  //         ? Colors.green
                  //         : PreluraColors.primaryColor,
                  weight: FontWeight.w400,
                  message: status
                      .replaceFirst("rejected", "Declined")
                      .replaceFirst("cancelled", "Declined"),
                  textSize: 12,
                  username: status,
                ),
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
              onTap: () => handleOfferResponse(Enum$OfferActionEnum.ACCEPT),
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
      // if (!amTheSeller && status == "accepted") ...[
      //   10.verticalSpacing,
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20),
      //     child: Row(
      //         mainAxisAlignment:
      //             isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      //         children: [
      //           buildActionButton(
      //             onTap: () {},
      //             isLoading: isAccepting,
      //             text: "Make payment",
      //             isDisabled: isAccepting || isDeclining,
      //           ),
      //         ]),
      //   ),
      // ],
      if (!amTheSeller && status == "countered" && isSender) ...[
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 20,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "please wait for seller to respond",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PreluraColors.grey,
                    fontSize: 12,
                  ),
            ),
          ),
        ),
      ],
    ]);
  }
}

///
///
///

// class OfferSubCardBox extends ConsumerStatefulWidget {
//   final OfferSubStateInfo eventInfo;
//   final UserModel appUserInfo;
//   const OfferSubCardBox({
//     super.key,
//     required this.eventInfo,
//     required this.appUserInfo,
//   });
//
//   @override
//   OfferSubCardBoxState createState() => OfferSubCardBoxState();
// }
//
// class OfferSubCardBoxState extends ConsumerState<OfferSubCardBox> {
//   bool amTheSeller = false;
//   bool isAccepted = false;
//   bool isAccepting = false;
//   bool isSendingOffer = false;
//   bool isDeclined = false;
//   bool isDeclining = false;
//
//   handleAccept() async {
//     if (isAccepted || isDeclined) return;
//     isAccepting = true;
//     setState(() {});
//     await ref
//         .read(
//           offerProvider.notifier,
//         )
//         .respondToOffer(
//           context,
//           actionType: Enum$OfferActionEnum.ACCEPT,
//         );
//
//     isAccepting = false;
//     setState(() {});
//   }
//
//   Future<void> handleDecline() async {
//     if (isAccepted || isDeclined) return;
//     isDeclining = true;
//     setState(() {});
//     await ref
//         .read(
//           offerProvider.notifier,
//         )
//         .respondToOffer(
//           context,
//           actionType: Enum$OfferActionEnum.REJECT,
//         );
//     isDeclining = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final ConversationModel offerInfo = ref.read(offerProvider).activeOffer!;
//     bool amTheSeller = widget.appUserInfo.username ==
//         offerInfo.offer?.product?.seller?.username;
//     bool isSender = widget.appUserInfo.username == widget.eventInfo.updatedBy;
//     var offeredPrice = widget.eventInfo.offerPrice;
//     return Column(children: [
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment:
//             isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
//         children: [
//           addHorizontalSpacing(15),
//           if (!isSender)
//             ProfilePictureWidget(
//               height: 55,
//               width: 55,
//               profilePicture:
//                   "${!amTheSeller ? offerInfo.offer?.product?.seller?.profilePictureUrl : offerInfo.offer?.buyer?.profilePictureUrl}",
//               username: widget.eventInfo.updatedBy,
//             ),
//           8.horizontalSpacing,
//           Container(
//             height: 50,
//             alignment: Alignment.center,
//             padding: EdgeInsets.symmetric(horizontal: 15),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(
//                 color: Colors.grey[300]!.withOpacity(0.5),
//                 width: 1,
//               ),
//             ),
//             child: HighlightUserName(
//               isRead: false,
//               highlightColor: PreluraColors.primaryColor,
//               message: offerType2
//                       .contains(widget.eventInfo.status?.toLowerCase())
//                   ? amTheSeller
//                       ? "You ${widget.eventInfo.status?.toLowerCase()} the offer"
//                       : ""
//                   : "${isSender ? "You" : widget.eventInfo.updatedBy} Offered £$offeredPrice",
//               username:
//                   offerType2.contains(widget.eventInfo.status?.toLowerCase())
//                       ? widget.eventInfo.status!.toLowerCase()
//                       : "offered",
//             ),
//           ),
//           addHorizontalSpacing(15),
//         ],
//       ),
//       if (!amTheSeller &&
//           widget.eventInfo.status?.toLowerCase() == "countered") ...[
//         10.verticalSpacing,
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             children: [
//               Expanded(
//                 child: AppButton(
//                   onTap: handleAccept,
//                   loading: isAccepting,
//                   text: isAccepted ? "Accepted" : "Accept",
//                   textColor: Colors.white,
//                   bgColor: isAccepted || isDeclined
//                       ? PreluraColors.primaryColor.withOpacity(0.7)
//                       : PreluraColors.primaryColor,
//                   // isDisabled: isAccepted || isDeclined,
//                 ),
//               ),
//               18.horizontalSpacing,
//               Expanded(
//                 child: AppButton(
//                   onTap: handleDecline,
//                   loading: isDeclining,
//                   text: isDeclined ? "Declined" : "Decline",
//                   textColor: Colors.white,
//                   bgColor: isDeclined || isAccepted
//                       ? PreluraColors.primaryColor.withOpacity(0.7)
//                       : PreluraColors.primaryColor,
//                   // isDisabled: isAccepted || isDeclined,
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     ]);
//   }
// }
