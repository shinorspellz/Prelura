import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/views/pages/chat/widgets/message_conversation_builder.dart';
import 'package:prelura_app/views/pages/chat/widgets/message_text_field.dart';
import 'package:prelura_app/views/pages/chat/widgets/offer_conversation_builder.dart';

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

final inChatRoom = StateProvider(
  (_) => false,
);

@RoutePage()
class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({
    super.key,
    required this.id,
    required this.isOffer,
    required this.username,
    required this.avatarUrl,
  });

  final String id;
  final bool isOffer;
  final String username;
  final String? avatarUrl;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      ref.read(inChatRoom.notifier).state = true;
    });
    super.initState();
  }

  @override
  void dispose() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      HelperFunction.genRef!.read(inChatRoom.notifier).state = false;
      HelperFunction.genRef!.invalidate(offerProvider);
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final chatMessages = ref.watch(chatProvider);
    final textController = TextEditingController();

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          appbarTitle: widget.username,
          trailingIcon: [
            IconButton(
              icon: Icon(
                Icons.info_outline,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ),
          ]),
      bottomNavigationBar: MessageTextField(
        id: widget.id,
        textController: textController,
      ),

      // Container(
      //   color: Theme.of(context).scaffoldBackgroundColor,
      //   padding: EdgeInsets.only(
      //       bottom: MediaQuery.viewInsetsOf(context).bottom + 20,
      //       left: 16,
      //       right: 16,
      //       top: 10),
      //   child: Row(children: [
      //     // 16.horizontalSpacing,
      //     // InkWell(
      //     //   onTap: () {},
      //     //   child: Padding(
      //     //     padding: const EdgeInsets.all(4.0),
      //     //     child: Icon(Icons.camera_alt),
      //     //   ),
      //     // ),
      //     // addHorizontalSpacing(4),
      //     Expanded(
      //       child: TextField(
      //         controller: textController,
      //         decoration: InputDecoration(
      //             fillColor: context.theme.scaffoldBackgroundColor,
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(10),
      //               borderSide: BorderSide(color: PreluraColors.primaryColor),
      //             )),
      //         onSubmitted: (value) {
      //           final message = textController.text.trim();
      //           if (message.isNotEmpty) {
      //             ref.read(messagesProvider(id).notifier).sendMessage(message);
      //             // ref.read(chatProvider.notifier).sendMessage(message);
      //             textController.clear();
      //           }
      //           ;
      //         },
      //       ),
      //     ),
      //     // 16.horizontalSpacing
      //     // IconButton(
      //     //   icon: const Icon(Icons.send),
      //     //   onPressed: () {
      //     //     final message = textController.text.trim();
      //     //     if (message.isNotEmpty) {
      //     //       ref.read(messagesProvider(id).notifier).sendMessage(message);
      //     //       // ref.read(chatProvider.notifier).sendMessage(message);
      //     //       textController.clear();
      //     //     }
      //     //   },
      //     // ),
      //   ]),
      // ),
      body: widget.isOffer
          ? OfferConversationBuilder(
              conversationId: widget.id,
            )
          : ListView(controller: ref.watch(chatScrollController), children: [
              MessageConversationBuilder(
                conversationId: int.parse(widget.id),
                avatar: widget.avatarUrl,
                scrollController: ref.watch(chatScrollController),
                textController: textController,
              ),
            ]),

      // SingleChildScrollView(
      //         controller: ref.watch(chatScrollController),
      //         reverse: true,
      //         child: Column(children: [
      //           ref.watch(messagesProvider(id)).maybeWhen(
      //                 data: (messages) {
      //                   return ListView.builder(
      //                     shrinkWrap: true,
      //                     physics:
      //                         const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
      //                     itemCount: messages.length,
      //                     reverse: true,
      //                     itemBuilder: (context, index) {
      //                       final chat = messages[index];
      //                       final isSender = chat.sender.username != username;
      //                       final showAvatar = index == 0 ||
      //                           messages[index - 1].sender.username !=
      //                               chat.sender.username;
      //                       return Align(
      //                           alignment: isSender
      //                               ? Alignment.bottomRight
      //                               : Alignment.bottomLeft,
      //                           child: Column(
      //                             children: [
      //                               ChatTextWidget(
      //                                 chat: chat,
      //                                 isSender: isSender,
      //                                 id: id,
      //                                 lastMessage: showAvatar,
      //                               ),
      //                             ],
      //                           ));
      //                     },
      //                   );
      //                 },
      //                 orElse: () => Center(
      //                   child: LoadingWidget(),
      //                 ),
      //                 error: (e, _) {
      //                   log(e.toString(), stackTrace: _);
      //                   return Center(
      //                     child: LoadingWidget(),
      //                   );
      //                 },
      //               )
      //         ]),
      //       ),
    );
  }
}
