import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/notification/notification_model.dart';
import 'package:prelura_app/res/date_time_extension.dart';
import 'package:prelura_app/res/username.dart';
import 'package:prelura_app/views/pages/profile_details/view/user_wardrobe.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'profile_picture.dart';
import 'red_dot.dart';

class NotificationCard extends ConsumerWidget {
  const NotificationCard({
    super.key,
    required this.notification,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log(":::The notification info::: $notification");
    final bool isRead = true;
    return GestureDetector(
      onTap: () async {
        if (!notification.isRead!) {
          // ref
          //     .read(readNotificationProvider.notifier)
          //     .readNotification(int.parse(notification.id));
          // ref.invalidate(notificationProvider);
        }
        if (notification.modelGroup == "Chat") {
          context.router.push(ChatRoute(
            id: notification.meta["conversation_id"],
            username: notification.meta["sender"],
            avatarUrl: notification.sender?.profilePictureUrl,
            isOffer: notification.meta["is_offer"] ?? false,
          ));
          return;
        }
        if (notification.modelGroup == "Offer") {
          context.router.push(ChatRoute(
            id: notification.meta["conversation_id"],
            username: notification.meta["sender"],
            avatarUrl: notification.sender?.profilePictureUrl,
            isOffer: true,
          ));
          return;
        }
        if (notification.modelGroup == "UserProfile") {
          context.router.push(ProfileDetailsRoute(
            username: notification.sender?.username ?? "",
          ));
          return;
        }

        if (notification.modelGroup == "Product") {
          context.router.push(ProductDetailRoute(
            productId: int.parse(notification.modelId!),
          ));
          return;
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Image
            ProfilePictureWidget(
              height: 40,
              width: 40,
              profilePicture: notification.sender?.profilePictureUrl,
              username: notification.sender?.username,
            ),
            const SizedBox(width: 15),

            // Message and Time Row
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   notification.sender.username,
                  //   overflow: TextOverflow.ellipsis,
                  //   maxLines: 2,
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyMedium
                  //       ?.copyWith(fontWeight: FontWeight.w400),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: HighlightUserName(
                            isRead: true,
                            username: notification.sender?.username ?? "",
                            message: notification.message),
                      ),
                      2.horizontalSpacing,
                      const SizedBox(width: 24), // Add spacing before time
                      // Time
                      Text(
                        notification.createdAt!.timeAgo(),
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String extractMessageWithoutUsername(String username, String message) {
    if (message.startsWith(username)) {
      // Remove the username and trim any extra spaces
      return message.substring(username.length);
    }
    return message; // Return the full message if it doesn't start with the username
  }
}
