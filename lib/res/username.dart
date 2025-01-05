import 'package:flutter/material.dart';
import 'package:prelura_app/core/utils/theme.dart';

import 'colors.dart';

class HighlightUserName extends StatelessWidget {
  final String username;
  final String message;
  final bool isRead;

  HighlightUserName(
      {required this.username, required this.message, required this.isRead});

  @override
  Widget build(BuildContext context) {
    bool darkMode = context.isDarkMode;
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: !isRead
                  ? Theme.of(context).textTheme.bodyMedium?.color
                  : PreluraColors.grey,
            ),
        children: _highlightUsernameInMessage(username, message, context),
      ),
    );
  }

  List<TextSpan> _highlightUsernameInMessage(
      String username, String message, BuildContext context) {
    final List<TextSpan> spans = [];
    final pattern = RegExp(username, caseSensitive: false);

    int start = 0;
    for (final match in pattern.allMatches(message)) {
      // Add text before the match
      if (start < match.start) {
        spans.add(TextSpan(text: message.substring(start, match.start)));
      }

      // Add the matched username with a different style
      spans.add(TextSpan(
        text: message.substring(match.start, match.end),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color:
                context.isDarkMode ? PreluraColors.white : PreluraColors.black,
            fontWeight: FontWeight.w700),
      ));

      start = match.end;
    }

    // Add remaining text after the last match
    if (start < message.length) {
      spans.add(TextSpan(text: message.substring(start)));
    }

    return spans;
  }
}
