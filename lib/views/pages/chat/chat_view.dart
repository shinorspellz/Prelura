import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/pages/chat/widgets/chat_card_box.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

import '../../../model/user/user_model.dart';
import '../../widgets/app_bar.dart';

// final chatProvider = StateNotifierProvider<ChatNotifier, List<ChatMessage>>(
//   (ref) => ChatNotifier(),
// );

// class ChatMessage {
//   final String message;
//   final bool isSentByUser;
//
//   ChatMessage({required this.message, required this.isSentByUser});
// }
//
// class ChatNotifier extends StateNotifier<List<ChatMessage>> {
//   ChatNotifier()
//       : super([
//           ChatMessage(message: "Hello! How are you?", isSentByUser: false),
//           ChatMessage(
//               message: "I'm good, thanks! How about you?", isSentByUser: true),
//           ChatMessage(
//               message: "I'm doing great! What's new?", isSentByUser: false),
//           ChatMessage(
//               message: "Not much, just working on a Flutter project.",
//               isSentByUser: true),
//         ]);
//
//   void sendMessage(String message) {
//     state = [...state, ChatMessage(message: message, isSentByUser: true)];
//   }
//
//   void receiveMessage(String message) {
//     state = [...state, ChatMessage(message: message, isSentByUser: false)];
//   }
// }

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
    // final chatMessages = ref.watch(chatProvider);
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
            left: 16,
            right: 16,
            top: 10),
        child: Row(
          children: [
            // 16.horizontalSpacing,
            // InkWell(
            //   onTap: () {},
            //   child: Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: Icon(Icons.camera_alt),
            //   ),
            // ),
            // addHorizontalSpacing(4),
            Expanded(
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                    fillColor: context.theme.scaffoldBackgroundColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: PreluraColors.primaryColor),
                    )),
                onSubmitted: (value) {
                  final message = textController.text.trim();
                  if (message.isNotEmpty) {
                    ref
                        .read(messagesProvider(id).notifier)
                        .sendMessage(message);
                    // ref.read(chatProvider.notifier).sendMessage(message);
                    textController.clear();
                  }
                  ;
                },
              ),
            ),
            // 16.horizontalSpacing
            // IconButton(
            //   icon: const Icon(Icons.send),
            //   onPressed: () {
            //     final message = textController.text.trim();
            //     if (message.isNotEmpty) {
            //       ref.read(messagesProvider(id).notifier).sendMessage(message);
            //       // ref.read(chatProvider.notifier).sendMessage(message);
            //       textController.clear();
            //     }
            //   },
            // ),
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
            ref.watch(messagesProvider(id)).maybeWhen(
                  data: (messages) {
                    final lastOtherSenderMessage = messages.firstWhere(
                      (message) => message.sender.username == username,
                      orElse: () => MessageModel(
                          deleted: false,
                          id: 0,
                          sender: UserModel(id: 0, username: ''),
                          text: '',
                          isItem: false,
                          read: false),
                    );
                    log(lastOtherSenderMessage.toJson().toString(),
                        name: 'lastOtherSenderMessage');
                    log(messages.toString(), name: 'messages');
                    log(username, name: 'username');

                    return ListView.builder(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
                      itemCount: messages.length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        final chat = messages[index];
                        final isSender = chat.sender.username != username;
                        final showAvatar = index == 0 ||
                            messages[index - 1].sender.username !=
                                chat.sender.username;
                        return Align(
                            alignment: isSender
                                ? Alignment.bottomRight
                                : Alignment.bottomLeft,
                            child: Column(
                              children: [
                                ChatTextWidget(
                                  chat: chat,
                                  isSender: isSender,
                                  id: id,
                                  lastMessage: showAvatar,
                                ),
                                // isSender
                                //     ? SenderTextWidget(chat: chat, id: id)
                                //     : RecieverTextWidget(
                                //         chat: chat, lastMessage: showAvatar),
                              ],
                            ));
                      },
                    );
                  },
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

///
///
///
// class RecieverTextWidget extends StatelessWidget {
//   const RecieverTextWidget(
//       {super.key, required this.chat, required this.lastMessage});
//   final MessageModel chat;
//   final bool lastMessage;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         16.horizontalSpacing,
//         if (lastMessage)
//           ProfilePictureWidget(
//             profilePicture: chat.sender.profilePictureUrl,
//             username: chat.sender.username,
//           ),
//         Container(
//           margin: const EdgeInsets.all(8.0),
//           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//           constraints: BoxConstraints(
//             maxWidth: MediaQuery.sizeOf(context).width / 1.4,
//           ),
//           decoration: BoxDecoration(
//             border: Border.all(color: PreluraColors.grey, width: 1),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Text(
//             chat.text,
//             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                   fontSize: getDefaultSize(size: 16),
//                 ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class SenderTextWidget extends ConsumerWidget {
//   const SenderTextWidget({super.key, required this.chat, required this.id});
//   final MessageModel chat;
//   final String id;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return CupertinoContextMenu.builder(
//       enableHapticFeedback: true,
//       actions: [
//         CupertinoContextMenuAction(
//           onPressed: () {
//             Clipboard.setData(ClipboardData(text: chat.text));
//             Navigator.pop(context);
//           },
//           // isDefaultAction: true,
//           trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
//           child: const Text('Copy'),
//         ),
//         CupertinoContextMenuAction(
//           onPressed: () {
//             ref.read(messagesProvider(id).notifier).deleteMessage(chat.id);
//             Navigator.pop(context);
//           },
//           isDestructiveAction: true,
//           trailingIcon: CupertinoIcons.delete,
//           child: const Text('Delete'),
//         ),
//       ],
//       builder: (context, animation) => Align(
//         alignment: Alignment.bottomRight,
//         child: Container(
//           margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
//           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//           constraints: BoxConstraints(
//             maxWidth: MediaQuery.sizeOf(context).width / 1.4,
//           ),
//           decoration: BoxDecoration(
//             border: Border.all(color: PreluraColors.grey, width: 1),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Text(
//             chat.text,
//             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                   fontSize: getDefaultSize(size: 16),
//                 ),
//           ),
//         ),
//       ),
//     );
//   }
// }
