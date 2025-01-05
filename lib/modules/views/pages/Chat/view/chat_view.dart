import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/chat/conversations_provider.dart';
import 'package:prelura_app/modules/controller/chat/messages_provider.dart';
import 'package:prelura_app/modules/model/chat/message_model.dart';
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_in.dart';
import 'package:prelura_app/modules/views/pages/Chat/widgets/product_card.dart';
import 'package:prelura_app/modules/views/pages/Chat/widgets/seller_card.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/context_entension.dart';

import '../../../widgets/app_bar.dart';

final chatProvider = StateNotifierProvider<ChatNotifier, List<ChatMessage>>(
  (ref) => ChatNotifier(),
);

class ChatMessage {
  final String message;
  final bool isSentByUser;

  ChatMessage({required this.message, required this.isSentByUser});
}

class ChatNotifier extends StateNotifier<List<ChatMessage>> {
  ChatNotifier()
      : super([
          ChatMessage(message: "Hello! How are you?", isSentByUser: false),
          ChatMessage(
              message: "I'm good, thanks! How about you?", isSentByUser: true),
          ChatMessage(
              message: "I'm doing great! What's new?", isSentByUser: false),
          ChatMessage(
              message: "Not much, just working on a Flutter project.",
              isSentByUser: true),
        ]);

  void sendMessage(String message) {
    state = [...state, ChatMessage(message: message, isSentByUser: true)];
  }

  void receiveMessage(String message) {
    state = [...state, ChatMessage(message: message, isSentByUser: false)];
  }
}

@RoutePage()
class ChatScreen extends ConsumerWidget {
  const ChatScreen({
    super.key,
    required this.id,
    required this.username,
    required this.avatarUrl,
  });

  final String id;
  final String username;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatMessages = ref.watch(chatProvider);
    final textController = TextEditingController();

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: username,
        trailingIcon: [
          IconButton(
            icon: Icon(Icons.info_outline,
                color: Theme.of(context).iconTheme.color),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom + 20,
            left: 10,
            right: 25,
            top: 10),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.camera_alt),
              ),
            ),
            addHorizontalSpacing(4),
            Expanded(
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText: 'Type your message...',
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                final message = textController.text.trim();
                if (message.isNotEmpty) {
                  ref.read(messagesProvider(id).notifier).sendMessage(message);
                  // ref.read(chatProvider.notifier).sendMessage(message);
                  textController.clear();
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: ref.watch(chatScrollController),
        reverse: true,
        child: Column(
          children: [
            // Static content at the top
            // ProductCard(image: avatarUrl),
            SellerCard(
              name: username,
              profilePicture: avatarUrl,
            ),

            ref.watch(messagesProvider(id)).maybeWhen(
                  data: (messages) => ListView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
                    itemCount: messages.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final chat = messages[index];
                      final isSender = chat.sender.username != username;
                      return Align(
                          alignment: isSender
                              ? Alignment.bottomRight
                              : Alignment.bottomLeft,
                          child: isSender
                              ? SenderTextWidget(chat: chat, id: id)
                              : RecieverTextWidget(chat: chat));
                    },
                  ),
                  orElse: () => Center(
                    child: LoadingWidget(),
                  ),
                  error: (e, _) {
                    log(e.toString(), stackTrace: _);
                    return Center(
                      child: LoadingWidget(),
                    );
                  },
                )
            // Scrollable chat messages list

            // Input field for sending messages
          ],
        ),
      ),
    );
  }
}

class RecieverTextWidget extends StatelessWidget {
  const RecieverTextWidget({super.key, required this.chat});
  final MessageModel chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width / 1.4,
      ),
      decoration: BoxDecoration(
        color: PreluraColors.activeColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        chat.text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16,
            ),
      ),
    );
  }
}

class SenderTextWidget extends ConsumerWidget {
  const SenderTextWidget({super.key, required this.chat, required this.id});
  final MessageModel chat;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoContextMenu.builder(
      enableHapticFeedback: true,
      actions: [
        CupertinoContextMenuAction(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: chat.text));
            Navigator.pop(context);
          },
          // isDefaultAction: true,
          trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
          child: const Text('Copy'),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            ref.read(messagesProvider(id).notifier).deleteMessage(chat.id);
            Navigator.pop(context);
          },
          isDestructiveAction: true,
          trailingIcon: CupertinoIcons.delete,
          child: const Text('Delete'),
        ),
      ],
      builder: (context, animation) => Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width / 1.4,
          ),
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? PreluraColors.blueColor9D
                : PreluraColors.greyLightColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            chat.text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
