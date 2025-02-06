import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/message_model.dart';

// Message Cache Notifier
class MessageCacheNotifier
    extends StateNotifier<Map<String, List<MessageModel>>> {
  Box cacheBox;
  MessageCacheNotifier(this.cacheBox) : super({}) {
    _loadMessages();
  }

  // Load messages from SharedPreferences on init
  Future<void> _loadMessages() async {
    log("Starting to load messages :: 0", name: "chatRoomCaching");
    final cachedMessagesJson = await cacheBox.get('cachedMessages');
    if (cachedMessagesJson != null) {
      log("Starting to load messages :: 1", name: "chatRoomCaching");
      final cachedMap = json.decode(cachedMessagesJson) as Map<String, dynamic>;
      final loadedMessages = cachedMap.map((userId, messagesJson) {
        final messages = (messagesJson as List)
            .map((messageJson) => MessageModel.fromJson(messageJson))
            .toList();
        log("Starting to load messages :: 2 ::: $messagesJson",
            name: "chatRoomCaching");
        return MapEntry(userId, messages);
      });
      log("Starting to load messages :: 3 :::$loadedMessages",
          name: "chatRoomCaching");
      state = loadedMessages;
    }
  }

  // Cache a new message for a specific user
  Future<void> cacheMessage(String userId, List<MessageModel> message) async {
    // final prefs = await SharedPreferences.getInstance();
    log("Starting to cache messages :: 0 :::$message", name: "chatRoomCaching");
    // Update state with new message
    final Set<MessageModel> uniqueMessages = {...message};

    state = {...state, userId: uniqueMessages.toList()};
    log("Starting to cache messages :: 1", name: "chatRoomCaching");
    if (message.isEmpty) return;
    log("Starting to cache messages :: 2", name: "chatRoomCaching");
    // Save to SharedPreferences
    await _saveMessagesToPrefs();
  }

  // Retrieve messages for a specific user, with optional TTL check
  List<MessageModel> getValidMessages(String userId, Duration ttl) {
    final now = DateTime.now();
    final validMessages = state[userId]
            ?.where(
              (msg) => now.difference(msg.createdAt!) <= ttl,
            )
            .toList() ??
        [];
    log(":::$validMessages", name: "The cached messages");
    // Update state with valid messages only
    state = {...state, userId: validMessages};
    return validMessages;
  }

  // Clear expired messages for a specific user
  Future<void> clearExpiredMessages(String userId, Duration ttl) async {
    final now = DateTime.now();

    // Filter valid messages
    final validMessages = state[userId]
            ?.where(
              (msg) => now.difference(msg.createdAt!) <= ttl,
            )
            .toList() ??
        [];

    // Update state and SharedPreferences
    state = {...state, userId: validMessages};
    await _saveMessagesToPrefs();
  }

  //
  // Save the entire map to SharedPreferences
  Future<void> _saveMessagesToPrefs() async {
    final cachedMapJson = state.map((
      userId,
      messages,
    ) {
      final messageJsonList = messages
          .map(
            (msg) => msg.toJson(),
          )
          .toList();
      return MapEntry(userId, messageJsonList);
    });
    log("Starting to cache messages :: 3", name: "chatRoomCaching");
    log(":::The message list is $cachedMapJson");
    await cacheBox.put(
      'cachedMessages',
      json.encode(cachedMapJson),
    );
    log("Starting to cache messages :: 4", name: "chatRoomCaching");
  }

  cacheConversations(List<ConversationModel> conversations) async {
    log(":::::From caching conversations:: 1 ${conversations.length}");
    final messageJsonList = conversations
        .map(
          (msg) => msg.toJson(),
        )
        .toList();
    log(":::::From caching conversations:: 2");
    await cacheBox.put(
      'cachedConversations',
      jsonEncode(messageJsonList),
    );
    log(":::::From caching conversations:: 3");
  }

  List<ConversationModel> fetchCachedConversations() {
    log(":::::From fetching conversations:: 1");
    final cachedMessagesJson = cacheBox.get('cachedConversations');
    log(":::::From fetching conversations:: 2 :${cachedMessagesJson}");
    if (cachedMessagesJson != null) {
      log(":::::From fetching conversations:: 3");
      final cachedMap = json.decode(cachedMessagesJson) as List<dynamic>;
      log(":::::From fetching conversations:: 4");
      final List<ConversationModel> conversations = cachedMap
          .map(
            (conversationInfo) => ConversationModel.fromJson(conversationInfo),
          )
          .toList();
      return conversations;
    }
    log(":::::From fetching conversations:: 4");
    return [];
  }
}

final messageCacheProvider = StateNotifierProvider<MessageCacheNotifier,
    Map<String, List<MessageModel>>>((ref) {
  return MessageCacheNotifier(ref.read(hive).requireValue);
});
