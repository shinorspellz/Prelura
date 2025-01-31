import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/notification/notification_model.dart';
import 'package:prelura_app/res/date_time_extension.dart';
import 'package:prelura_app/res/username.dart';

class NotificationCard extends ConsumerWidget {
  const NotificationCard({
    super.key,
    required this.notification,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log(":::The notification info::: $notification");
    return GestureDetector(
      onTap: () async {
        if (!notification.isRead!) {
          await ref
              .read(readNotificationProvider.notifier)
              .readNotification(int.parse(notification.id));
          ref.invalidate(notificationProvider);
        }
        if (notification.modelGroup == "Chat") {
          context.router.push(ChatRoute(
            id: notification.meta["conversation_id"],
            username: notification.meta["sender"],
            avatarUrl: notification.sender.profilePictureUrl,
            isOffer: notification.meta["is_offer"] ?? false,
          ));
        }
        if (notification.modelGroup == "Offer") {
          context.router.push(ChatRoute(
            id: notification.meta["conversation_id"],
            username: notification.meta["sender"],
            avatarUrl: notification.sender.profilePictureUrl,
            isOffer: true,
          ));
        }
        if (notification.modelGroup == "UserProfile") {
          context.router.push(ProfileDetailsRoute(
            username: notification.sender.username,
          ));
        }

        if (notification.modelGroup == "Product") {
          context.router.push(ProductDetailRoute(
            productId: int.parse(notification.modelId!),
          ));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
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
            if (notification.sender.profilePictureUrl == null) ...[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 20,
                  child: Text(notification.sender.username
                          .split('')
                          .first
                          .toUpperCase() ??
                      '--'),
                ),
              )
            ],
            if (notification.sender.profilePictureUrl != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: notification.sender.profilePictureUrl!,
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
            ],
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
                              isRead: notification.isRead ?? false,
                              username: notification.sender.username,
                              message: notification.message)

                          // Row(
                          //   children: [
                          //     Text(
                          //       notification.message.split(" ").first,
                          //       overflow: TextOverflow.ellipsis,
                          //       maxLines: 2,
                          //       style: Theme.of(context)
                          //           .textTheme
                          //           .bodyMedium
                          //           ?.copyWith(
                          //               fontWeight: notification.isRead!
                          //                   ? FontWeight.w500
                          //                   : FontWeight.w700),
                          //     ),
                          //     Text(
                          //       extractMessageWithoutUsername(
                          //           notification.sender.username,
                          //           notification.message),
                          //       overflow: TextOverflow.ellipsis,
                          //       maxLines: 2,
                          //       style: Theme.of(context)
                          //           .textTheme
                          //           .bodyMedium
                          //           ?.copyWith(
                          //               fontWeight: notification.isRead!
                          //                   ? FontWeight.w200
                          //                   : FontWeight.w400),
                          //     ),
                          //   ],
                          // ),
                          ),
                      const SizedBox(width: 10), // Add spacing before time
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
