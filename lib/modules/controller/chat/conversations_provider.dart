import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/modules/model/chat/conversation_model.dart';

final conversationProvider = AsyncNotifierProvider<_ConversationNotifier, List<ConversationModel>>(_ConversationNotifier.new);

class _ConversationNotifier extends AsyncNotifier<List<ConversationModel>> {
  late final _repo = ref.read(chatRepo);

  @override
  FutureOr<List<ConversationModel>> build() => _getConversations();

  Future<List<ConversationModel>> _getConversations() async {
    final result = await _repo.getConversation();
    return result;
  }

  Future<void> createChat(String name, String recipient) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      final result = await _repo.createChat(name, recipient);

      final currentState = state.valueOrNull ?? [];

      return [
        ...[result],
        ...currentState,
      ];
    });
  }

  Future<void> deleteConversation(String id) async {
    state = AsyncData((state.valueOrNull ?? [])..removeWhere((x) => x.id == id));

    state = await AsyncValue.guard(() async {
      await _repo.deleteConversation(int.parse(id));
      final newState = await future;

      return newState;
    });
  }
}
