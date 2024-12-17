import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/notification_card.dart';

import '../../../../../core/notification_service.dart';
import '../provider/notification_provider.dart';

class NotificationsTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);
    final notificationService = ref.read(notificationServiceProvider.notifier);

    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              notificationService.displayTestNotification();
            },
            child: const Text('Send Test Notification'),
          ),
          ElevatedButton(
            onPressed: () async {
              await notificationService.init();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Notification service initialized')),
              );
            },
            child: const Text('Initialize Notifications'),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              final notification = notifications[index];
              return NotificationCard(
                itemImageUrl: notification.imageUrl,
                message: notification.message,
                time: notification.timeAgo,
              );
            },
          ),
        ],
      ),
    );
  }
}
