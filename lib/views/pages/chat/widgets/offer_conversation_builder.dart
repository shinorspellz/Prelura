import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

import 'offer_card.dart';

List<String> offerType2 = ["rejected", "cancelled"];

class OfferConversationBuilder extends ConsumerWidget {
  const OfferConversationBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.watch(offerProvider);
    ConversationModel conversationInfo = offerState.activeOffer!;
    UserModel? appUserInfo = ref.read(userProvider).value;
    List<OfferSubStateInfo>? offerChildren = conversationInfo.offer?.children;
    final isSender = conversationInfo.offer?.buyer?.username !=
        conversationInfo.recipient.username;
    return Column(children: [
      OfferCard(
        conversationId: conversationInfo.id,
        isSender: isSender,
      ),

      ///
      /// OFFER LISTING SESSION
      ///
      if (offerChildren != null && offerChildren.isNotEmpty)
        ListView.separated(
          shrinkWrap: true,
          physics:
              const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
          itemCount: offerChildren.length,
          reverse: true,
          itemBuilder: (context, index) {
            final OfferSubStateInfo chat = offerChildren[index];
            // final isSender = chat.updatedBy != appUserInfo?.username;

            return OfferSubCardBox(
              eventInfo: chat,
              appUserInfo: appUserInfo!,
            );
          },
          separatorBuilder: (_, __) {
            return addVerticalSpacing(10);
          },
        )

      ///
      ///
      ///
      // ref.watch(messagesProvider(conversationInfo.id)).maybeWhen(
      //       data: (messages) {
      //         return ;
      //       },
      //       orElse: () => Center(
      //         child: LoadingWidget(),
      //       ),
      //       error: (e, _) {
      //         log(e.toString(), stackTrace: _);
      //         return Center(
      //           child: LoadingWidget(),
      //         );
      //       },
      //     ),
    ]);
  }
}

class OfferSubCardBox extends ConsumerWidget {
  const OfferSubCardBox({
    super.key,
    required this.eventInfo,
    required this.appUserInfo,
  });

  final OfferSubStateInfo eventInfo;
  final UserModel appUserInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ConversationModel offerInfo = ref.read(offerProvider).activeOffer!;
    bool amTheSeller =
        appUserInfo.username == offerInfo.offer?.product?.seller?.username;
    bool isSender = appUserInfo.username == eventInfo.updatedBy;
    var offeredPrice = eventInfo.offerPrice;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        addHorizontalSpacing(15),
        if (!isSender)
          ProfilePictureWidget(
            height: 55,
            width: 55,
            profilePicture: "${offerInfo.offer?.buyer?.profilePictureUrl}",
            username: eventInfo.updatedBy,
          ),
        8.horizontalSpacing,
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
            message: offerType2.contains(eventInfo.status?.toLowerCase())
                ? "You ${eventInfo.status?.toLowerCase()} offer"
                : "${!amTheSeller ? "You" : eventInfo.updatedBy} Offered £$offeredPrice",
            username: offerType2.contains(eventInfo.status?.toLowerCase())
                ? eventInfo.status!.toLowerCase()
                : "offered",
          ),
        ),
        addHorizontalSpacing(15),
      ],
    );
  }
}
