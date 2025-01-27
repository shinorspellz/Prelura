import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'offer_card.dart';
import 'offer_product_card.dart';
import 'offer_subchild_box.dart';

List<String> offerType2 = ["rejected"];

class OfferConversationBuilder extends ConsumerWidget {
  const OfferConversationBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.watch(offerProvider);
    final conversationInfo = offerState.activeOffer!;
    final offerInfo = conversationInfo.offer!;

    // Listen to chats provider and process only new data
    ref.listen<AsyncValue<List<MessageModel>>>(
        messagesProvider(conversationInfo.id.toString()), (previous, next) {
      next.when(
        data: (chatLog) {
          if (previous?.value != chatLog) {
            // Only process if chatLog has changed
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
        offerInfo.buyer?.username != conversationInfo.recipient.username;
    final amTheSeller = appUserInfo?.username != offerInfo.buyer?.username;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: OfferProductCard(offerInfo: offerInfo),
        ),
        buildDivider(context),
        OfferFirstCard(
          conversationInfo: conversationInfo,
          amTheSeller: amTheSeller,
          isSender: isSender,
        ),
        if (offerChildren != null && offerChildren.isNotEmpty)
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              reverse: true,
              itemCount: offerChildren.length,
              itemBuilder: (context, index) {
                final chat = offerChildren[index];
                return OfferSubCardBox(
                  eventInfo: chat,
                  appUserInfo: appUserInfo!,
                );
              },
              separatorBuilder: (_, __) => addVerticalSpacing(10),
            ),
          ),
      ],
    );
  }
}

// class OfferConversationBuilder extends ConsumerWidget {
//   const OfferConversationBuilder({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final offerState = ref.watch(offerProvider);
//     ConversationModel conversationInfo = offerState.activeOffer!;
//     final chats = ref.watch(messagesProvider(
//       conversationInfo.id.toString(),
//     ));
//     chats.when(
//       data: (chatLog) {
//         WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
//           ref.read(offerProvider.notifier).analysisChatLog(
//                 chatLog,
//               );
//         });
//       },
//       error: (e, trace) {},
//       loading: () {},
//     );
//
//     final OfferInfo offerInfo = conversationInfo.offer!;
//     UserModel? appUserInfo = ref.read(userProvider).value;
//     List<OfferSubStateInfo>? offerChildren = conversationInfo.offer?.children;
//     final isSender = conversationInfo.offer?.buyer?.username !=
//         conversationInfo.recipient.username;
//     bool amTheSeller =
//         appUserInfo?.username != conversationInfo.offer?.buyer?.username;
//     return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//       Padding(
//         padding: const EdgeInsets.only(
//           left: 16,
//           right: 16,
//           bottom: 4,
//           top: 10,
//         ),
//         child: OfferProductCard(
//           offerInfo: conversationInfo.offer!,
//         ),
//       ),
//       buildDivider(context),
//       OfferFirstCard(
//         conversationInfo: conversationInfo,
//         amTheSeller: amTheSeller,
//         isSender: isSender,
//       ),
//
//       ///
//       /// OFFER LISTING SESSION
//       ///
//       if (offerChildren != null && offerChildren.isNotEmpty)
//         Flexible(
//           child: ListView.separated(
//             shrinkWrap: true,
//             padding: EdgeInsets.only(top: 10),
//             // physics:
//             //     const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
//             itemCount: offerChildren.length,
//             reverse: true,
//             itemBuilder: (context, index) {
//               final OfferSubStateInfo chat = offerChildren[index];
//               // final isSender = chat.updatedBy != appUserInfo?.username;
//
//               return OfferSubCardBox(
//                 eventInfo: chat,
//                 appUserInfo: appUserInfo!,
//               );
//             },
//             separatorBuilder: (_, __) {
//               return addVerticalSpacing(10);
//             },
//           ),
//         )
//     ]);
//   }
// }
