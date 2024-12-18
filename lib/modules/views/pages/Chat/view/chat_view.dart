import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_in.dart';
import 'package:prelura_app/modules/views/pages/Chat/widgets/product_card.dart';
import 'package:prelura_app/modules/views/pages/Chat/widgets/seller_card.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
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
          ChatMessage(message: "I'm good, thanks! How about you?", isSentByUser: true),
          ChatMessage(message: "I'm doing great! What's new?", isSentByUser: false),
          ChatMessage(message: "Not much, just working on a Flutter project.", isSentByUser: true),
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
  const ChatScreen(this.username, this.message, this.time, this.avatarUrl, {super.key});

  final String username;
  final String message;
  final String time;
  final String avatarUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatMessages = ref.watch(chatProvider);
    final textController = TextEditingController();

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: username,
        trailingIcon: [
          IconButton(
            icon: Icon(Icons.info_outline, color: Theme.of(context).iconTheme.color),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Static content at the top
                ProductCard(image: avatarUrl),
                SellerCard(name: username),

                // Scrollable chat messages list
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.5, // Limit height
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
                    itemCount: chatMessages.length,
                    itemBuilder: (context, index) {
                      final chat = chatMessages[index];
                      return Align(
                        alignment: chat.isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                          decoration: BoxDecoration(
                            color: chat.isSentByUser
                                ? context.isDarkMode
                                    ? PreluraColors.blueColor9D
                                    : PreluraColors.greyLightColor
                                : PreluraColors.activeColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            chat.message,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Input field for sending messages
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.all(8.0),
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
                        ref.read(chatProvider.notifier).sendMessage(message);
                        textController.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
