import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/conversations_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:uuid/uuid.dart';

enum ChatRoomActivity {
  idle,
  typing,
  loadingMoreMessages,
  sendingMessage,
  receivingMessage,
  error,
}

final chatScrollController = Provider.autoDispose((ref) => ScrollController());
final chatAnimationListState =
    Provider.autoDispose((ref) => GlobalKey<AnimatedListState>());

final showEmojiProvider = StateProvider<bool>(
  (_) => false,
);

final showSendButtonProvider = StateProvider<bool>(
  (_) => false,
);

// Chat room state provider
final chatRoomStateProvider = StateProvider<ChatRoomActivity>((ref) {
  return ChatRoomActivity.idle; // Initial state is idle
});

final messagesProvider = StreamNotifierProvider.family
    .autoDispose<_MessagesNotifier, List<MessageModel>, String>(
        _MessagesNotifier.new);

class _MessagesNotifier
    extends AutoDisposeFamilyStreamNotifier<List<MessageModel>, String> {
  late final _repo = ref.read(chatRepo);

  final int _pageCount = 1000;
  int _currentPage = 1;
  int _messagesTotal = 0;

  String? _conversationId;

  SocketChannel? _channel;

  @override
  Stream<List<MessageModel>> build(String arg) async* {
    // state = const AsyncLoading();
    _currentPage = 1;

    _conversationId = arg;
    ref.onDispose(() => _channel?.close());
    ref.onDispose(() => _channel = null);

    _channel = SocketChannel(
        'wss://prelura.com/ws/chat/$arg/', ref.watch(hive).requireValue);

    await _getMessages(id: arg, pageNumber: _currentPage);
    await for (final event in _channel!.stream) {
      final newMessageData = event is String ? jsonDecode(event) : event;
      if (newMessageData["is_typing"] == null) {
        final MessageModel newMessage = MessageModel.fromSocket(newMessageData);
        if (ref.read(chatScrollController).hasClients) {
          ref.read(chatScrollController).animateTo(
                ref.read(chatScrollController).position.minScrollExtent,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
        }
        addMessage(newMessage);
        ref.invalidate(conversationProvider);
      }
    }
  }

  /// updates the state with the latest event
  void addMessage(MessageModel newMessage) {
    List<MessageModel> dataList =
        <MessageModel>{newMessage, ...state.value ?? []}.toList();
    state = AsyncData(dataList);
  }

  /// sends message to via [_channel]
  Future<void> sendMessage(String message) async {
    final messageUUID = Uuid().v4();
    _channel?.sendMessage(
        jsonEncode({'message': message.trim(), 'message_uuid': messageUUID}));
  }

  /// Retrieves the list of messages via api
  Future<void> _getMessages({required String id, int? pageNumber}) async {
    log(":::::You called the get messages ::::");
    final result = await _repo.getMessages(
        id: id, pageCount: _pageCount, pageNumber: pageNumber);
    _messagesTotal = result.conversationTotalNumber!;

    final newState =
        result.conversation!.map((e) => MessageModel.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _messagesTotal;

    if (canLoadMore) {
      await _getMessages(
        id: _conversationId!,
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _messagesTotal;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _messagesTotal;
  }

  Future<void> deleteMessage(String id) async {
    state =
        AsyncData((state.valueOrNull ?? [])..removeWhere((x) => x.id == id));

    state = await AsyncValue.guard(() async {
      await _repo.deleteMessage(int.parse(id));
      final newState = await future;

      return newState;
    });
  }
}

final messagesActionProvider =
    AsyncNotifierProvider<_MessssageActionNotifier, void>(
        _MessssageActionNotifier.new);

class _MessssageActionNotifier extends AsyncNotifier<void> {
  late final _repo = ref.read(chatRepo);
  @override
  FutureOr<void> build() {}

  Future<void> readMessage(List<int> ids) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.readMessages(ids);
    });
  }
}

// final messagesLiveProvider = StreamNotifierProvider.family.autoDispose<MessagesLiveProvider, MessageModel, String>(MessagesLiveProvider.new);

// class MessagesLiveProvider extends AutoDisposeFamilyStreamNotifier<MessageModel, String> {
//   SocketChannel? _channel;

//   @override
//   Stream<MessageModel> build(String arg) async* {}

// }
