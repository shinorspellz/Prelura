import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

import 'offer_product_card.dart';
import 'offer_subchild_box.dart';

List<String> offerType2 = ["rejected"];

class OfferConversationBuilder extends ConsumerWidget {
  const OfferConversationBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.watch(offerProvider);
    ConversationModel conversationInfo = offerState.activeOffer!;
    final OfferInfo offerInfo = conversationInfo.offer!;
    UserModel? appUserInfo = ref.read(userProvider).value;
    List<OfferSubStateInfo>? offerChildren = conversationInfo.offer?.children;
    final isSender = conversationInfo.offer?.buyer?.username !=
        conversationInfo.recipient.username;
    bool amTheSeller =
        appUserInfo?.username != conversationInfo.offer?.buyer?.username;
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      // OfferCard(
      //   conversationId: conversationInfo.id,
      //   isSender: isSender,
      // ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: OfferProductCard(
          offerInfo: conversationInfo.offer!,
          amTheSeller: amTheSeller,
          isSender: isSender,
        ),
      ),
      buildDivider(context),
      OfferFirstCard(
        conversationInfo: conversationInfo,
        amTheSeller: amTheSeller,
        isSender: isSender,
      ),

      ///
      /// OFFER LISTING SESSION
      ///
      if (offerChildren != null && offerChildren.isNotEmpty)
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            // physics:
            //     const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
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
          ),
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
  @override
  Widget build(BuildContext context) {
    final OfferInfo offerInfo = widget.conversationInfo.offer!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
          mainAxisAlignment:
              widget.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (widget.amTheSeller)
              ProfilePictureWidget(
                height: 50,
                width: 50,
                profilePicture: "${offerInfo.buyer?.profilePictureUrl}",
                username: offerInfo.buyer?.username,
              ),
            8.horizontalSpacing,
            Column(children: [
              HighlightUserName(
                isRead: false,
                highlightColor: PreluraColors.primaryColor,
                message:
                    "${widget.isSender ? "you" : offerInfo.buyer?.username} Offered £${offerInfo.offerPrice}",
                username: "offered",
              ),
            ]),
          ]),
    );
  }
}
