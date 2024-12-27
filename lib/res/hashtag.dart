import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

List<InlineSpan> buildHashtagText(String text, TextStyle? defaultStyle, TextStyle? hashtagStyle, [Function(String)? hashtagSelected]) {
  final regex = RegExp(r'(\s+|\n+|#[\w]+|[^\s#]+)'); // Match spaces, newlines, hashtags, and other words

  final matches = regex.allMatches(text);
  final spans = <InlineSpan>[];

  for (var match in matches) {
    final matchText = match.group(0)!; // The matched text
    if (matchText.startsWith('#')) {
      // If it's a hashtag, apply hashtag style
      spans.add(TextSpan(
        recognizer: TapGestureRecognizer()..onTap = () => hashtagSelected?.call(matchText),
        text: matchText,
        style: hashtagStyle ?? TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ));
    } else {
      // Otherwise, apply default style
      spans.add(TextSpan(
        text: matchText,
        style: defaultStyle,
      ));
    }
  }

  return spans;
}
