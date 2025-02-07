import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';

import 'VTyping.dart';

class TypingHandlerBox extends ConsumerStatefulWidget {
  final TextEditingController textController;
  final String conversationId;
  const TypingHandlerBox({
    super.key,
    required this.textController,
    required this.conversationId,
  });

  @override
  ConsumerState<TypingHandlerBox> createState() => _TypingHandlerBoxState();
}

class _TypingHandlerBoxState extends ConsumerState<TypingHandlerBox> {
  StreamSubscription? _typingSubscription;
  Timer? _typingTimer;
  bool isTyping = false;
  String senderName = "";

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_onTextChange);
    _initializeSocket();
  }

  @override
  void dispose() {
    widget.textController.removeListener(_onTextChange);
    _typingSubscription?.cancel();
    _typingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appUser = ref.read(userProvider).value;

    return StreamBuilder(
      stream: ref
          .read(messagesProvider(widget.conversationId).notifier)
          .socketChannel
          ?.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError || !snapshot.hasData) {
          return const SizedBox.shrink();
        }

        try {
          final data = jsonDecode(snapshot.data as String? ?? '');
          isTyping = data['is_typing'];
          final sender = data["sender"]?.toString() ?? "";

          if (isTyping &&
              sender.toLowerCase() != appUser?.username.toLowerCase()) {
            senderName = sender;
            _resetTypingTimer();
            return TypingIndicator(username: sender);
          }
        } catch (e) {
          debugPrint("Error decoding typing data: $e");
        }

        return const SizedBox.shrink();
      },
    );
  }

  void _initializeSocket() {
    _typingSubscription = ref
        .read(messagesProvider(widget.conversationId).notifier)
        .socketChannel
        ?.stream
        .listen((data) {
      try {
        final decodedData = jsonDecode(data);
        isTyping = decodedData['is_typing'];
        senderName = decodedData["sender"];
      } catch (e) {
        debugPrint("Error parsing typing data: $e");
      }
    });
  }

  void _onTextChange() {
    log("::: You called us:::: 0");
    final isCurrentlyTyping = widget.textController.text.isNotEmpty;
    _sendTypingStatus(isCurrentlyTyping);
    if (isCurrentlyTyping) {
      _resetTypingTimer();
    }
  }

  void _sendTypingStatus(bool typing) {
    final typingData = jsonEncode({
      "type": "typing_status",
      "is_typing": typing,
      "sender": ref.read(userProvider).value?.username,
    });
    ref
        .read(messagesProvider(widget.conversationId).notifier)
        .socketChannel
        ?.sendMessage(typingData);
  }

  void _resetTypingTimer() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      _typingTimer?.cancel();
      _typingTimer = Timer(const Duration(seconds: 4), () {
        if (mounted && isTyping) {
          _sendTypingStatus(false);
        }
      });
    });
  }
}
