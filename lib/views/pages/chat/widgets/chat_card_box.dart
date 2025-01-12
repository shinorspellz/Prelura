import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

import 'offer_card.dart';

class ChatTextWidget extends ConsumerWidget {
  const ChatTextWidget({
    super.key,
    required this.chat,
    required this.isSender,
    this.lastMessage = false,
    this.id,
  });

  final MessageModel chat;
  final bool isSender;
  final bool lastMessage;
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log("::::The item Type is ::: ${chat.itemType}");
    return isSender
        ? CupertinoContextMenu.builder(
            enableHapticFeedback: true,
            actions: [
              CupertinoContextMenuAction(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: chat.text));
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  if (id != null) {
                    ref
                        .read(messagesProvider(id!).notifier)
                        .deleteMessage(chat.id);
                  }
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            builder: (context, animation) => _buildMessageContainer(context,
                alignment: Alignment.bottomRight),
          )
        : _buildMessageContainer(context, alignment: Alignment.centerLeft);
  }

  Widget _buildMessageContainer(BuildContext context,
      {required Alignment alignment}) {
    bool isOffer = chat.itemType == "OFFER";
    bool isSeller = chat.itemType == "";

    return isOffer
        ? OfferCard(
            chatInfo: chat,
            isSender: isSender,
          )
        // BuyerOfferCard(),
        : Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 16),
              if (lastMessage)
                ProfilePictureWidget(
                  profilePicture: chat.sender.profilePictureUrl,
                  username: chat.sender.username,
                ),
              Align(
                alignment: alignment,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width / 1.4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: PreluraColors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    chat.text,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getDefaultSize(size: 16),
                        ),
                  ),
                ),
              ),
            ],
          );
  }
}
