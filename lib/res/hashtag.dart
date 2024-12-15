import 'package:flutter/material.dart';

List<InlineSpan> buildHashtagText(
    String text, TextStyle? defaultStyle, TextStyle? hashtagStyle) {
  final words = text.split(' ');
  return words.map((word) {
    if (word.startsWith('#')) {
      // Apply hashtag style
      return TextSpan(
        text: '$word ',
        style: hashtagStyle ??
            TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      );
    } else {
      // Apply default style
      return TextSpan(
        text: '$word ',
        style: defaultStyle,
      );
    }
  }).toList();
}
