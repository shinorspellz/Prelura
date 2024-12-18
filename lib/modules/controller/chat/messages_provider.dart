import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/modules/model/chat/conversation_model.dart';
import 'package:prelura_app/modules/model/chat/message_model.dart';

final messagesProvider = AsyncNotifierProvider.family<_MessagesNotifier, List<MessageModel>, String>(_MessagesNotifier.new);

class _MessagesNotifier extends FamilyAsyncNotifier<List<MessageModel>, String> {
  late final _repo = ref.read(chatRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _messagesTotal = 0;

  String? _conversationId;

  @override
  FutureOr<List<MessageModel>> build(String arg) async {
    state = const AsyncLoading();
    _currentPage = 1;
    _conversationId = arg;
    await _getMessages(id: arg, pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getMessages({required String id, int? pageNumber}) async {
    final result = await _repo.getMessages(id: id, pageCount: _pageCount, pageNumber: pageNumber);
    _messagesTotal = result.conversationTotalNumber!;

    final newState = result.conversation!.map((e) => MessageModel.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty && newState.any((element) => currentState.last.id == element.id)) {
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
    state = AsyncData((state.valueOrNull ?? [])..removeWhere((x) => x.id == id));

    state = await AsyncValue.guard(() async {
      await _repo.deleteMessage(int.parse(id));
      final newState = await future;

      return newState;
    });
  }
}

final messagesActionProvider = AsyncNotifierProvider<_MessssageActionNotifier, void>(_MessssageActionNotifier.new);

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
