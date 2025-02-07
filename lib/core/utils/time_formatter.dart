String formatChatTime(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inDays == 0) {
    // Today
    if (difference.inMinutes < 1) {
      return "Just now";
    } else if (difference.inMinutes < 60) {
      return "${difference.inMinutes} mins ago";
    } else {
      return "${difference.inHours} hours ago";
    }
  } else if (difference.inDays == 1) {
    // Yesterday
    return "1 day ago";
  } else {
    return "${difference.inDays} days ago";
  }
  // else {
  //   // Older dates
  //   final day = DateFormat('d').format(dateTime);
  //   final suffix = _getDaySuffix(dateTime.day);
  //   final monthYear = DateFormat('MMM, yy').format(dateTime);
  //   return "$day$suffix $monthYear";
  // }
}

String _getDaySuffix(int day) {
  if (day >= 11 && day <= 13) {
    return "th";
  }
  switch (day % 10) {
    case 1:
      return "st";
    case 2:
      return "nd";
    case 3:
      return "rd";
    default:
      return "th";
  }
}
