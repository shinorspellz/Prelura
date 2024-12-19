import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/model/notification/notification_model.dart';
import 'package:prelura_app/res/date_time_extension.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notification,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (notification.modelGroup == "Chat") {
          context.router.push(ChatRoute(
            id: notification.meta["conversation_id"],
            username: notification.meta["sender"],
            avatarUrl: notification.sender.profilePictureUrl,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: notification.sender.profilePictureUrl,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          notification.message,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w400),
                        ),
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
}
