import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

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
                      alignment: isSender
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      child: Column(
                        children: [
                          // isSender
                          //     ? SenderTextWidget(chat: chat, id: id)
                          //     : RecieverTextWidget(
                          //         chat: chat, lastMessage: showAvatar),
                        ],
                      ));
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
