import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/views/pages/chat/chat_view.dart';

import 'chat_cache_handler.dart';

final conversationProvider =
    AsyncNotifierProvider<_ConversationNotifier, List<ConversationModel>>(
        _ConversationNotifier.new);

class _ConversationNotifier extends AsyncNotifier<List<ConversationModel>> {
  late final _repo = ref.read(chatRepo);

  @override
  FutureOr<List<ConversationModel>> build() => _getConversations();

  Future<List<ConversationModel>> _getConversations() async {
    final List<ConversationModel> cachedConversations = ref
        .read(
          messageCacheProvider.notifier,
        )
        .fetchCachedConversations();
    if (cachedConversations.isNotEmpty) {
      _performPostCachedEvent();
      return cachedConversations;
    } else {
      state = AsyncData([]);
      state = AsyncLoading();
      final result = await _repo.getConversation();
      ref
          .read(
            messageCacheProvider.notifier,
          )
          .cacheConversations(result);
      return result;
    }
  }

  _performPostCachedEvent() async {
    final List<ConversationModel> result = await _repo.getConversation();
    ref
        .read(
          messageCacheProvider.notifier,
        )
        .cacheConversations(result);
    state = AsyncData(result);
  }

  Future<void> createChat(String recipient) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      final result = await _repo.createChat(recipient);

      final currentState = state.valueOrNull ?? [];

      return [
        ...[result],
        ...currentState,
      ];
    });
  }

  Future<void> deleteConversation(String id) async {
    state =
        AsyncData((state.valueOrNull ?? [])..removeWhere((x) => x.id == id));

    state = await AsyncValue.guard(() async {
      await _repo.deleteConversation(int.parse(id));
      final newState = await future;

      return newState;
    });
  }

  updateTypingState(dynamic typingInfo) {
    final conversationList = state.valueOrNull ?? [];

    // Find if the conversation already exists in the list
    final conversationIndex = conversationList
        .indexWhere((conv) => conv.id == typingInfo["conversation_id"]);

    if (conversationIndex == -1) {
    } else {
      // If conversation is found, update it by creating a new list
      final List<ConversationModel> updatedList =
          List<ConversationModel>.from(conversationList);

      updatedList[conversationIndex] = updatedList[conversationIndex].copyWith(
        isTyping: typingInfo["is_typing"],
      ); // Assuming you want to copy the existing conversation
      state = AsyncData(updatedList);
      if (typingInfo["is_typing"]) {
        initiateTypingTimeout(typingInfo);
      }
    }
  }

  initiateTypingTimeout(typingInfo) async {
    await Future.delayed(const Duration(seconds: 6));
    final conversationList = state.valueOrNull ?? [];

    // Find if the conversation already exists in the list
    final conversationIndex = conversationList
        .indexWhere((conv) => conv.id == typingInfo["conversation_id"]);

    if (conversationIndex == -1) {
    } else {
      if (conversationList[conversationIndex].isTyping ?? false) {
        // If conversation is found, update it by creating a new list
        final List<ConversationModel> updatedList =
            List<ConversationModel>.from(conversationList);

        updatedList[conversationIndex] = updatedList[conversationIndex].copyWith(
            isTyping:
                false); // Assuming you want to copy the existing conversation
        state = AsyncData(updatedList);
      }
    }
  }

  void updateConversation(ConversationModel conversation) {
    final chatRoomId = ref.read(currentChatRoomId);
    final conversationList = state.valueOrNull ?? [];

    // Find if the conversation already exists in the list
    final conversationIndex = conversationList.indexWhere(
      (conv) => conv.id == conversation.id,
    );

    if (conversationIndex == -1) {
      // If conversation is not found, add it to the list
      state = AsyncData([conversation, ...conversationList]);
      _makePostCall();
    } else {
      // If conversation is found, update it by creating a new list
      final List<ConversationModel> updatedList =
          List<ConversationModel>.from(conversationList);

      updatedList[conversationIndex] = updatedList[conversationIndex].copyWith(
        unreadMessagesCount: conversation.unreadMessagesCount,
        lastMessage: conversation.lastMessage,
        lastModified: conversation.lastModified,
      ); // Assuming you want to copy the existing conversation
      state = AsyncData(updatedList);
    }
    if (conversation.id != chatRoomId) {
      updateUserChatCache(conversation.id!.toString());
    }
  }

  _makePostCall() async {
    final conversations = await ref
        .read(
          conversationProvider.notifier,
        )
        ._getConversations();

    _checkForUpdate(conversations);
    state = AsyncData(conversations);
    // });
  }

  _checkForUpdate(List<ConversationModel> conversations) {
    log("::::This is the cache handling of a thing");
    if (conversations.isNotEmpty) {
      for (ConversationModel conversation in conversations) {
        if ((conversation.unreadMessagesCount ?? 0) > 0) {
          updateUserChatCache(conversation.id!);
        }
      }
    }
  }

  updateUserChatCache(String chatRoomId) async {
    List<MessageModel> response = await ref
        .read(messagesProvider("").notifier)
        .getMessages(id: chatRoomId.toString(), pageNumber: 0);
    if (response.isNotEmpty) {
      ref
          .read(messageCacheProvider.notifier)
          .cacheMessage(chatRoomId.toString(), response);
    }
  }
}

///
///
///

final generalChatRoomProvider =
    StreamNotifierProvider<GeneralChatRoomNotifier, List<ConversationModel>>(
  () => GeneralChatRoomNotifier(),
);

class GeneralChatRoomNotifier extends StreamNotifier<List<ConversationModel>> {
  SocketChannel? _socketChannel;

  @override
  Stream<List<ConversationModel>> build() async* {
    disposeChannel(); // Ensure previous socket is closed before opening a new one

    final uri = 'wss://prelura.com/ws/conversations/';
    _socketChannel = SocketChannel(uri, ref.watch(hive).requireValue);

    try {
      await for (final event in _socketChannel!.stream) {
        final newMessageData = _parseEvent(event);
        final genRoom = ref.read(conversationProvider.notifier);

        if (newMessageData['type'] == "typing_status") {
          genRoom.updateTypingState(newMessageData);
        } else {
          var data = ConversationsResponse.fromJson(newMessageData);
          if (data.conversations != null && data.conversations!.isNotEmpty) {}
          if (data.conversation != null) {
            log("::::Entered the conversation last room ::: 1");
            genRoom.updateConversation(
              data.conversation!,
            );
          }
        }
      }
    } on WebSocketException catch (e) {
      log('WebSocket error: $e', name: 'GeneralChatRoomProvider', error: e);
    } catch (e, stackTrace) {
      log('Unexpected error in WebSocket stream: $e',
          name: 'GeneralChatRoomProvider', error: e, stackTrace: stackTrace);
    }
  }

  void disposeChannel() {
    log(":::: You are dispossing us ::: ");
    _socketChannel?.close();
    _socketChannel = null;
  }

  Map<String, dynamic> _parseEvent(dynamic event) {
    try {
      return event is String
          ? jsonDecode(event) as Map<String, dynamic>
          : event;
    } catch (e) {
      log('Error parsing WebSocket event: $e', name: 'GeneralChatRoomProvider');
      return {};
    }
  }
}
