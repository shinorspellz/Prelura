import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

import 'offer_card.dart';

class OfferConversationBuilder extends ConsumerWidget {
  final String conversationId, username, avatar;
  const OfferConversationBuilder({
    super.key,
    required this.conversationId,
    required this.username,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.read(offerProvider);
    UserModel? appUserInfo = ref.read(userProvider).value;
    ConversationModel offerInfo = offerState.activeOffer!;
    final isSender = offerInfo.offer?.buyer?.username != username;
    return Column(children: [
      OfferCard(
        conversationId: conversationId,
        isSender: isSender,
      ),
      ref.watch(messagesProvider(conversationId)).maybeWhen(
            data: (messages) {
              return ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
                itemCount: messages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  final chat = messages[index];
                  final isSender = chat.sender.username != username;
                  final showAvatar = index == 0 ||
                      messages[index - 1].sender.username !=
                          chat.sender.username;
                  return Align(
                    alignment:
                        isSender ? Alignment.bottomRight : Alignment.bottomLeft,
                    child: OfferSubCardBox(
                      eventInfo: chat,
                      appUserInfo: appUserInfo!,
                    ),
                  );
                },
              );
            },
            orElse: () => Center(
              child: LoadingWidget(),
            ),
            error: (e, _) {
              log(e.toString(), stackTrace: _);
              return Center(
                child: LoadingWidget(),
              );
            },
          ),
    ]);
  }
}

class OfferSubCardBox extends ConsumerWidget {
  const OfferSubCardBox({
    super.key,
    required this.eventInfo,
    required this.appUserInfo,
  });

  final MessageModel eventInfo;
  final UserModel appUserInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool amTheSeller = appUserInfo.username != eventInfo.sender.username;
    var offeredPrice =
        jsonDecode(eventInfo.text.replaceAll("'", "\""))["offer_price"];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment:
          amTheSeller ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        addHorizontalSpacing(15),
        if (!amTheSeller)
          ProfilePictureWidget(
            height: 55,
            width: 55,
            profilePicture: "${eventInfo.sender.profilePictureUrl}",
            username: eventInfo.sender.username,
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
            message:
                "${!amTheSeller ? "You" : eventInfo.sender.username} Offered £$offeredPrice",
            username: "offered",
          ),
        ),
        addHorizontalSpacing(15),
      ],
    );
  }
}
