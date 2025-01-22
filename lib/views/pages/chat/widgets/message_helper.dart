import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/model/chat/message_model.dart';

class MessageHelper {
  static List<MessageModel> messages = [];
  static double getMyTopSpace(MessageModel chatInfo) {
    const double smallSpace = 2;
    const double largeSpace = 16;

    // Clone and sort the messages list
    List<MessageModel> sortedMessages = List.from(messages);
    sortMessagesByDate(sortedMessages);

    // Find the index of the current message
    int messageIndex = sortedMessages.indexWhere((e) => e.id == chatInfo.id);

    bool isFirst = messageIndex == 0;

    // Determine the previous message if available
    MessageModel? prev = isFirst ? null : sortedMessages[messageIndex - 1];

    // Check if the previous message is from the same day
    bool isPrevSameDay = prev != null
        ? chatInfo.createdAt!.difference(prev.createdAt!).inMinutes < 1
        : false;
    bool isPrevSameUser = prev?.sender.username == chatInfo.sender.username;
    // Calculate top space based on conditions

    if (isFirst) {
      return smallSpace; // Larger space for the first message
    } else {
      return (isPrevSameDay && isPrevSameUser) ? smallSpace : largeSpace;
    }
  }

  static bool canShowImage(MessageModel chatInfo) {
    // Clone and sort the messages list
    List<MessageModel> sortedMessages = List.from(messages);
    sortMessagesByDate(sortedMessages);

    // Find the index of the current message
    int messageIndex = sortedMessages.indexWhere((e) => e.id == chatInfo.id);

    bool isFirst = messageIndex == 0;
    bool isLast = messageIndex == sortedMessages.length - 1;

    // Handle single message case (both first and last)
    if (isFirst && isLast) {
      return true; // Smaller top space for a single message
    }

    // Determine the previous message if available
    MessageModel? prev = isFirst ? null : sortedMessages[messageIndex - 1];
    MessageModel? next = isLast ? null : sortedMessages[messageIndex + 1];

    // Check if the previous message is from the same day
    bool isPrevSameDay = prev != null
        ? chatInfo.createdAt!.difference(prev.createdAt!).inMinutes < 1
        : false;
    bool isNextSameDay = next != null &&
        next.createdAt!.difference(chatInfo.createdAt!).inMinutes < 1;
    bool isPrevSameUser = prev?.sender.username == chatInfo.sender.username;
    bool isNextSameUser = next?.sender.username == chatInfo.sender.username;
    // Calculate top space based on conditions
    if (isFirst && !isNextSameDay) {
      return true; // Larger space for the first message
    } else if (isLast) {
      return true;
    } else if (isNextSameUser && isPrevSameUser && isPrevSameDay) {
      return isNextSameDay ? false : true;
    } else if (!isNextSameUser && isPrevSameUser && isPrevSameDay) {
      return true;
    } else if (isNextSameUser &&
        isPrevSameUser &&
        !isPrevSameDay &&
        !isNextSameDay) {
      return true;
    } else if (!isPrevSameUser && !isNextSameUser) {
      return true;
    } else if (isNextSameUser &&
        isPrevSameUser &&
        !isNextSameDay &&
        !isPrevSameDay) {
      return true;
    } else if (!isNextSameUser && isPrevSameUser && !isPrevSameDay) {
      return true;
    } else if (isNextSameUser && !isPrevSameUser && !isNextSameDay) {
      return true;
    } else if (!isNextSameUser && !isPrevSameUser) {
      return true;
    } else if (isNextSameUser && isPrevSameUser && !isNextSameDay) {
      log(":::: This is from the last sentence ${chatInfo.toJson()}");
      return true;
    } else {
      return false;
    }
  }

// Sample function to sort messages by date (descending or ascending)
  static sortMessagesByDate(List<MessageModel> messages,
      {bool ascending = true}) {
    messages.sort((a, b) {
      if (ascending) {
        return a.createdAt!.compareTo(b.createdAt!);
      } else {
        return DateFormat("dd-MM-y").format(b.createdAt!).compareTo(
              DateFormat("dd-MM-y").format(a.createdAt!),
            ); // Descending order (newer to older)
      }
    });
  }

  static BorderRadius getMyBorderRadius(
    MessageModel chatInfo,
    String currentUsername,
  ) {
    const double cornerRadius = 20;
    const double smallRadius = 2;
    const double fullRadius = 25;

    bool isMe = currentUsername == chatInfo.sender.username;

    // Clone and sort the messages
    // List<MessageModel> sortedMessages = messages;
    List<MessageModel> sortedMessages = List.from(messages);
    sortMessagesByDate(sortedMessages);

    // Find the index of the current message
    int messageIndex = sortedMessages.indexWhere((e) => e.id == chatInfo.id);

    bool isFirst = messageIndex == 0;
    bool isLast = messageIndex == sortedMessages.length - 1;

    // Handle single message case (both first and last)
    if (isFirst && isLast) {
      return BorderRadius.circular(fullRadius);
    }

    // Determine previous and next messages if available
    MessageModel? prev = isFirst ? null : sortedMessages[messageIndex - 1];
    MessageModel? next = isLast ? null : sortedMessages[messageIndex + 1];

    bool isPrevSameDay = prev != null &&
        chatInfo.createdAt!.difference(prev.createdAt!).inMinutes < 1;
    bool isNextSameDay = next != null &&
        next.createdAt!.difference(chatInfo.createdAt!).inMinutes < 1;

    // Calculate top corners
    double topRight = (isFirst ||
            prev?.sender.username != chatInfo.sender.username)
        ? cornerRadius
        : (isPrevSameDay ? (isMe ? smallRadius : cornerRadius) : cornerRadius);
    double topLeft = (isFirst ||
            prev?.sender.username != chatInfo.sender.username)
        ? cornerRadius
        : (isPrevSameDay ? (isMe ? cornerRadius : smallRadius) : cornerRadius);

    // Calculate bottom corners
    double bottomRight = (isLast ||
            next?.sender.username != chatInfo.sender.username)
        ? cornerRadius
        : (isNextSameDay ? (isMe ? smallRadius : cornerRadius) : cornerRadius);
    double bottomLeft = (isLast ||
            next?.sender.username != chatInfo.sender.username)
        ? cornerRadius
        : (isNextSameDay ? (isMe ? cornerRadius : smallRadius) : cornerRadius);

    // Return the calculated BorderRadius
    return BorderRadius.only(
      topRight: Radius.circular(topRight),
      topLeft: Radius.circular(topLeft),
      bottomRight: Radius.circular(bottomRight),
      bottomLeft: Radius.circular(bottomLeft),
    );
  }

  static String getMessageType(MessageModel chatInfo) {
    if (!chatInfo.text!.contains("message_type")) return "text";
    var jsonData = jsonDecode(chatInfo.text!);
    if (jsonData["message_type"] != null) {
      return jsonData["message_type"].toString().toLowerCase();
    } else {
      return "text";
    }
  }

  static bool containsOnlyEmoji(String text) {
    // Regular expression to match emoji characters
    final emojiPattern = RegExp(
      r'^(?:[\u{1F600}-\u{1F64F}]|[\u{1F300}-\u{1F5FF}]|[\u{1F680}-\u{1F6FF}]|'
      r'[\u{1F700}-\u{1F77F}]|[\u{1F1E6}-\u{1F1FF}]|[\u{2600}-\u{26FF}]|'
      r'[\u{2700}-\u{27BF}]|[\u{1F900}-\u{1F9FF}]|[\u{1FA70}-\u{1FAFF}]|'
      r'[\u{1F000}-\u{1FFFF}])+$',
      unicode: true,
    );

    // Check if the input matches the emoji pattern completely
    return emojiPattern.hasMatch(text);
  }
}
