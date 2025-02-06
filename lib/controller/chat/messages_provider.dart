import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/chat/conversations_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/network/network.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:uuid/uuid.dart';

import 'chat_cache_handler.dart';

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

final messageImageProvider = StateProvider<XFile?>(
  (_) => null,
);

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

    _initializeChatRoom();
    await for (final event in _channel!.stream) {
      final newMessageData = event is String ? jsonDecode(event) : event;
      log("::::: The new messages:::$newMessageData");
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

  // cacheChat(String id, List<MessageModel> chats) {
  //   final Box cacheBox = ref.watch(hive).requireValue;
  //   Map<String, List
  //   final cacheKey = 'chat_$id';
  //   // .set(cacheKey, chats);
  // }
  ///
  ///
  ///

  void _initializeChatRoom() async {
    AsyncLoading();
    if (_conversationId!.isEmpty) return;

    // Retrieve valid messages for a user

    final userMessages = await ref.read(
      messageCacheProvider,
    )[_conversationId];

    log("From the cache fetching: :$_conversationId: $userMessages");
    if (userMessages != null && userMessages.isNotEmpty) {
      log("From the cache fetching::: 0");
      state = AsyncData(userMessages);
      //   //running a post fetch in-order to keep the list in sync
      //   //with the server
      //
      postMessageFetch(int.parse(_conversationId!));
      log("From the cache fetching::: 1", name: "From the cache room");
      log("$state");
    } else {
      log("From the cache fetching::: 2");
      // fetchPages = [];
      var response = await _getMessages(id: arg, pageNumber: _currentPage);
      state = AsyncData(response);
      _cacheMessages();
    }
  }

  Future<void> postMessageFetch(int id) async {
    // fetchPages = [];
    List<MessageModel> response =
        await _getMessages(id: id.toString(), pageNumber: 0);
    if (response.isNotEmpty) {
      ref
          .read(messageCacheProvider.notifier)
          .cacheMessage(id.toString(), response);
      state = AsyncData(response);
    }
  }

  ///
  ///
  ///

  /// updates the state with the latest event
  void addMessage(MessageModel newMessage) {
    List<MessageModel> dataList =
        <MessageModel>{newMessage, ...state.value ?? []}.toList();
    state = AsyncData(dataList);
    _cacheMessages();
  }

  Future<void> _cacheMessages() async {
    // final userId = ref.read(currentChatRoomUserId).toString();
    ref
        .read(messageCacheProvider.notifier)
        .cacheMessage(_conversationId!, (state.value ?? []).take(25).toList());
  }

  /// sends message to via [_channel]
  Future<void> sendMessage(String message) async {
    final messageUUID = Uuid().v4();
    _channel?.sendMessage(
        jsonEncode({'message': message.trim(), 'message_uuid': messageUUID}));
  }

  /// Retrieves the list of messages via api
  Future<List<MessageModel>> _getMessages(
      {required String id, int? pageNumber}) async {
    log(":::::You called the get messages ::::");
    final result = await _repo.getMessages(
        id: id, pageCount: _pageCount, pageNumber: pageNumber);
    _messagesTotal = result.conversationTotalNumber!;

    final newState =
        result.conversation!.map((e) => MessageModel.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      _currentPage = pageNumber!;
      return newState.toList();
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        _currentPage = pageNumber!;
        return [];
      }
      _currentPage = pageNumber!;
      return [...currentState, ...newState];
    }
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

  pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      ref
          .read(
            messageImageProvider.notifier,
          )
          .state = pickedImage;
      log('Image: ${pickedImage.path}');
    }
  }

  sendImage() async {
    final pickedImage = ref.read(messageImageProvider.notifier).state;
    if (pickedImage != null) {
      final file = File(pickedImage.path);
      final List<File> files = [file];
      final uploadedFiles = await _uploadMedia(files);

      final messageUUID = Uuid().v4();
      _channel?.sendMessage(jsonEncode({
        'image_urls': uploadedFiles,
        'message_uuid': messageUUID,
        'message': "",
      }));

      ref.read(messageImageProvider.notifier).state = null;
    }
  }

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final _fileUploadRepo = ref.read(fileUploadRepo);

    final upload = await _fileUploadRepo.uploadFiles(
      files,
      Enum$FileTypeEnum.BANNER,
      onUploadProgress: (sent, total) =>
          log('${sent / total}%', name: 'FileUpload'),
    );

    if (upload == null) throw 'Failed to upload images.';

    return upload;
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
