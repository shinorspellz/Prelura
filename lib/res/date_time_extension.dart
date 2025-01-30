import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String timeAgo() {
    final date2 = DateTime.now();
    final difference = date2.difference(this);

    if ((difference.inDays / 7).floor() >= 1) {
      return '${(difference.inDays / 7).floor()}w';
    } else if ((difference.inDays / 7).floor() == 1) {
      return '1w';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays}d';
    } else if (difference.inDays >= 1) {
      return '1d';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours}h';
    } else if (difference.inHours >= 1) {
      return '1h';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes}m';
    } else if (difference.inMinutes >= 1) {
      return '1m';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds}s';
    } else {
      return '1s';
    }
  }

  String get getChatHeader {
    final now = DateTime.now();
    final difference = now.difference(this);
    if (difference.inHours < 24 && (now.day == day)) {
      return 'Today';
    } else if (difference.inHours < 30 && (now.day > day)) {
      return 'Yesterday';
    } else if (difference.inDays < 365) {
      return DateFormat("EEE, MMM dd")
          .format(this); // Day of the week (e.g., Monday, Tuesday)
    } else {
      return DateFormat.yMMMd().format(this); // Full date (e.g., Oct 3, 2024)
    }
  }
}

final formatter = DateFormat('MMM dd, y');
