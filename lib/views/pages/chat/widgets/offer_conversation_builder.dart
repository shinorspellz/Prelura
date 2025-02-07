import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/conversations_provider.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

import 'offer_card.dart';
import 'offer_product_card.dart';
import 'offer_subchild_box.dart';

List<String> offerType2 = ["rejected"];

// class OfferConversationBuilder extends ConsumerStatefulWidget {
//   final String conversationId;
//
//   const OfferConversationBuilder({
//     super.key,
//     required this.conversationId,
//   });
//
//   @override
//   OfferConversationBuilderState createState() =>
//       OfferConversationBuilderState();
// }
//
// class OfferConversationBuilderState
//     extends ConsumerState<OfferConversationBuilder> {
//   ConversationModel? conversationInfo;
//   bool toFetch = true;
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //
//   // }
//
//   void _initializeConversation() {
//     // Listen to conversation updates and set active conversation
//     ref.listen<AsyncValue<List<ConversationModel>>>(
//       conversationProvider,
//       (previous, next) {
//         next.when(
//           data: (conversations) {
//             if (toFetch && previous?.value != conversations) {
//               ref.read(offerProvider.notifier).saveConversation(
//                     conversationList: conversations,
//                     activeId: widget.conversationId,
//                   );
//               toFetch = false;
//             }
//           },
//           error: (e, trace) {
//             // Handle errors if necessary
//           },
//           loading: () {
//             // Handle loading if necessary
//           },
//         );
//       },
//     );
//   }
//
//   void _processChatLogs() {
//     if (conversationInfo == null) return;
//
//     ref.listen<AsyncValue<List<MessageModel>>>(
//       messagesProvider(conversationInfo!.id.toString()),
//       (previous, next) {
//         next.when(
//           data: (chatLog) {
//             if (previous?.value != chatLog) {
//               ref.read(offerProvider.notifier).analysisChatLog(chatLog);
//             }
//           },
//           error: (e, trace) {
//             // Handle errors if necessary
//           },
//           loading: () {
//             // Handle loading if necessary
//           },
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final offerState = ref.watch(offerProvider);
//     conversationInfo = offerState.activeOffer;
//     if (conversationInfo == null) {
//       _initializeConversation();
//       return const Center(child: CircularProgressIndicator.adaptive());
//     }
//
//     _processChatLogs();
//
//     final offerInfo = conversationInfo!.offer!;
//     final appUserInfo = ref.read(userProvider).value;
//     final offerChildren = offerInfo.children;
//     final isSender =
//         offerInfo.buyer?.username != conversationInfo!.recipient.username;
//     final amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;
//
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//           child: OfferProductCard(offerInfo: offerInfo),
//         ),
//         buildDivider(context),
//         Flexible(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 OfferFirstCard(
//                   conversationInfo: conversationInfo!,
//                   amTheSeller: amTheSeller,
//                   isSender: isSender,
//                 ),
//                 if (offerChildren != null && offerChildren.isNotEmpty)
//                   ListView.separated(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.only(top: 10),
//                     reverse: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: offerChildren.length,
//                     itemBuilder: (context, index) {
//                       final chat = offerChildren[index];
//                       return OfferSubCardBox(
//                         eventInfo: chat,
//                         appUserInfo: appUserInfo!,
//                       );
//                     },
//                     separatorBuilder: (_, __) => addVerticalSpacing(10),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

///
///
///

class OfferConversationBuilder extends ConsumerStatefulWidget {
  final String conversationId;
  const OfferConversationBuilder({
    super.key,
    required this.conversationId,
  });

  @override
  OfferConversationBuilderState createState() =>
      OfferConversationBuilderState();
}

class OfferConversationBuilderState
    extends ConsumerState<OfferConversationBuilder> {
  ConversationModel? conversationInfo;

  bool isFirstTime = false;

  @override
  Widget build(BuildContext context) {
    final offerState = ref.watch(offerProvider);
    conversationInfo = offerState.activeOffer;
    if (conversationInfo == null) {
      log("::::Entered conversation null state :::");
      WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
        ref.invalidate(conversationProvider);
      });
      ref.listen<AsyncValue<List<ConversationModel>>>(conversationProvider,
          (previous, next) {
        next.when(
          data: (conversations) {
            log("::::Entered conversation null state :::1");
            if (previous?.value != conversations) {
              log("::::Entered conversation null state :::2");
              ref.read(offerProvider.notifier).saveConversation(
                    conversationList: conversations,
                    activeId: widget.conversationId,
                  );
            }
          },
          error: (e, trace) {},
          loading: () {},
        );
      });
    }
    if (conversationInfo == null) {
      return Center(child: LoadingWidget());
    } else {
      final offerInfo = conversationInfo!.offer!;

      // Listen to chats provider and process only new data
      ref.listen<AsyncValue<List<MessageModel>>>(
          messagesProvider(conversationInfo!.id.toString()), (previous, next) {
        next.when(
          data: (chatLog) {
            if (previous?.value != chatLog) {
              ref.read(offerProvider.notifier).analysisChatLog(chatLog);
            }
          },
          error: (e, trace) {},
          loading: () {},
        );
      });

      final appUserInfo = ref.read(userProvider).value;
      final offerChildren = offerInfo.children;
      final isSender =
          offerInfo.buyer?.username != conversationInfo!.recipient?.username;
      final amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 10,
              bottom: 1,
            ),
            child: OfferProductCard(offerInfo: offerInfo),
          ),
          buildDivider(context),
          // if (offerChildren != null && offerChildren.isNotEmpty)
          Flexible(
            child: SingleChildScrollView(
              controller: ref.read(chatScrollController),
              reverse: true,
              child: Column(children: [
                OfferFirstCard(
                  conversationInfo: conversationInfo!,
                  amTheSeller: amTheSeller,
                  isSender: isSender,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10),
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: offerChildren?.length ?? 0,
                  itemBuilder: (context, index) {
                    final chat = offerChildren![index];
                    if (isFirstTime) {
                      ref.read(chatScrollController).animateTo(
                            ref
                                .read(chatScrollController)
                                .position
                                .maxScrollExtent,
                            curve: Curves.linear,
                            duration: const Duration(
                              milliseconds: 350,
                            ),
                          );
                      // isFirstTime = false;
                    }
                    return OfferSubCardBox(
                      eventInfo: chat,
                      appUserInfo: appUserInfo!,
                    );
                  },
                  separatorBuilder: (_, __) => addVerticalSpacing(10),
                ),
              ]),
            ),
          ),
        ],
      );
    }
  }
}
