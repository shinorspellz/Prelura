import 'package:flutter/material.dart';
import 'package:prelura_app/model/chat/message_model.dart';

import 'message_helper.dart';

class PlainMessageBox extends StatelessWidget {
  const PlainMessageBox({
    super.key,
    required this.isMe,
    required this.chatInfo,
    required this.currentUsername,
  });

  final bool isMe;
  final MessageModel chatInfo;
  final String currentUsername;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    bool isOnlyEmoji = MessageHelper.containsOnlyEmoji(
      chatInfo.text.trim(),
    );
    return Container(
      margin: EdgeInsets.only(right: isMe ? 10 : 0),
      padding: EdgeInsets.only(
        left: isOnlyEmoji
            ? 0
            : isMe
                ? 10
                : 14,
        right: isOnlyEmoji
            ? 0
            : isMe
                ? 14
                : 10,
        top: isOnlyEmoji ? 0 : 10,
        bottom: isOnlyEmoji ? 0 : 10,
      ),
      constraints: BoxConstraints(
        maxWidth: deviceSize.width * 0.6,
      ),
      decoration: isOnlyEmoji
          ? null
          : BoxDecoration(
              borderRadius: MessageHelper.getMyBorderRadius(
                chatInfo,
                currentUsername,
              ),
              color: Theme.of(context).dividerColor,
            ),
      child: isOnlyEmoji
          ? FittedBox(
              child: Text(
                chatInfo.text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: chatInfo.text.characters.length == 1
                          ? 80
                          : chatInfo.text.characters.length == 2
                              ? 50
                              : 30,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            )
          : Text(
              chatInfo.text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: isOnlyEmoji ? 90 : 15,
                    fontWeight: FontWeight.w500,
                  ),
            ),
    );
  }
}
