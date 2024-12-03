import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../res/images.dart';
import '../model/notification_model.dart';

final notificationsProvider = StateProvider<List<NotificationItem>>((ref) {
  return [
    NotificationItem(
      message: 'kieranraza added your Vintage Jumper to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '16 hours ago',
    ),
    NotificationItem(
      message: 'lyrargh added your North Face Fleece to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '5 days ago',
    ),
    NotificationItem(
      message: 'kieranraza added your Vintage Jumper to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '16 hours ago',
    ),
    NotificationItem(
      message: 'lyrargh added your North Face Fleece to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '5 days ago',
    ),
    NotificationItem(
      message: 'kieranraza added your Vintage Jumper to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '16 hours ago',
    ),
    NotificationItem(
      message: 'lyrargh added your North Face Fleece to their favourites.',
      imageUrl: PreluraIcons.Image,
      timeAgo: '5 days ago',
    ),
  ];
});
