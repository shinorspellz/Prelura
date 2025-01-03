import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/model/chat/conversation_model.dart';
import 'package:prelura_app/modules/views/widgets/profile_picture.dart';
import 'package:prelura_app/res/colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.model,
  });

  final ConversationModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ChatRoute(
          id: model.id,
          username: model.recipient.username,
          avatarUrl: model.recipient.profilePictureUrl,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Avatar
            ProfilePictureWidget(
              height: 40,
              width: 40,
              profilePicture: model.recipient.profilePictureUrl,
              username: model.recipient.username,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.recipient.username,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  if (model.lastMessage?.text != null) ...[
                    // const SizedBox(height: 5),
                    Text(
                      model.lastMessage!.text,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ]

                  // const SizedBox(height: 5),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(6),
                  //   child: Image.asset(
                  //     itemImageUrl,
                  //     width: 40,
                  //     height: 40,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  DateFormat(DateFormat.HOUR_MINUTE).format(model.lastModified),
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
