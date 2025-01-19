import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

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
    return AppButton(
      onTap: onTap,
      loading: isLoading,
      text: text,
      fontSize: 13,
      height: 35,
      width: 120,
      textColor: Colors.white,
      bgColor: isDisabled
          ? PreluraColors.primaryColor.withOpacity(0.7)
          : PreluraColors.primaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ConversationModel offerInfo = ref.read(offerProvider).activeOffer!;
    final bool amTheSeller = widget.appUserInfo.username ==
        offerInfo.offer?.product?.seller?.username;
    final bool isSender =
        widget.appUserInfo.username == widget.eventInfo.updatedBy;
    final String? offeredPrice = widget.eventInfo.offerPrice;
    final String status = widget.eventInfo.status?.toLowerCase() ?? "";

    return Column(
      children: [
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
                username: widget.eventInfo.updatedBy,
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
                      "${isSender ? "You" : widget.eventInfo.updatedBy} offered £$offeredPrice",
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
                    highlightColor: status == "cancelled"
                        ? Colors.red
                        : status == "accepted"
                            ? Colors.green
                            : PreluraColors.primaryColor,
                    weight: FontWeight.w400,
                    message: status,
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
            child: Row(
              children: [
                buildActionButton(
                  onTap: () => handleOfferResponse(Enum$OfferActionEnum.ACCEPT),
                  isLoading: isAccepting,
                  text: isAccepting ? "Accepted" : "Accept",
                  isDisabled: isAccepting || isDeclining,
                ),
                // 18.horizontalSpacing,
                // buildActionButton(
                //   onTap: () => handleOfferResponse(Enum$OfferActionEnum.REJECT),
                //   isLoading: isDeclining,
                //   text: isDeclining ? "Declined" : "Decline",
                //   isDisabled: isAccepting || isDeclining,
                // ),
              ],
            ),
          ),
        ],
        if (!amTheSeller && status == "accepted") ...[
          10.verticalSpacing,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildActionButton(
                  onTap: () {},
                  isLoading: isAccepting,
                  text: "Make payment",
                  isDisabled: isAccepting || isDeclining,
                ),
                // 18.horizontalSpacing,
                // buildActionButton(
                //   onTap: () => handleOfferResponse(Enum$OfferActionEnum.REJECT),
                //   isLoading: isDeclining,
                //   text: isDeclining ? "Declined" : "Decline",
                //   isDisabled: isAccepting || isDeclining,
                // ),
              ],
            ),
          ),
        ],
      ],
    );
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
