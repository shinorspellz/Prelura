import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/notification_card.dart';

import '../provider/notification_provider.dart';

class NotificationsTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return NotificationCard(
          itemImageUrl: notification.imageUrl,
          message: notification.message,
          time: notification.timeAgo,
        );
      },
    );
  }
}
