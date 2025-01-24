import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'offer_card.dart';
import 'offer_product_card.dart';
import 'offer_subchild_box.dart';

List<String> offerType2 = ["rejected"];

class OfferConversationBuilder extends ConsumerWidget {
  const OfferConversationBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerState = ref.watch(offerProvider);
    ConversationModel conversationInfo = offerState.activeOffer!;
    final chats = ref.watch(messagesProvider(
      conversationInfo.id.toString(),
    ));
    final OfferInfo offerInfo = conversationInfo.offer!;
    UserModel? appUserInfo = ref.read(userProvider).value;
    List<OfferSubStateInfo>? offerChildren = conversationInfo.offer?.children;
    final isSender = conversationInfo.offer?.buyer?.username !=
        conversationInfo.recipient.username;
    bool amTheSeller =
        appUserInfo?.username != conversationInfo.offer?.buyer?.username;
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      // OfferCard(
      //   conversationId: conversationInfo.id,
      //   isSender: isSender,
      // ),
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 4,
          top: 10,
        ),
        child: OfferProductCard(
          offerInfo: conversationInfo.offer!,
        ),
      ),
      buildDivider(context),
      OfferFirstCard(
        conversationInfo: conversationInfo,
        amTheSeller: amTheSeller,
        isSender: isSender,
      ),

      ///
      /// OFFER LISTING SESSION
      ///
      if (offerChildren != null && offerChildren.isNotEmpty)
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10),
            // physics:
            //     const NeverScrollableScrollPhysics(), // Prevent nested scrolling conflicts
            itemCount: offerChildren.length,
            reverse: true,
            itemBuilder: (context, index) {
              final OfferSubStateInfo chat = offerChildren[index];
              // final isSender = chat.updatedBy != appUserInfo?.username;

              return OfferSubCardBox(
                eventInfo: chat,
                appUserInfo: appUserInfo!,
              );
            },
            separatorBuilder: (_, __) {
              return addVerticalSpacing(10);
            },
          ),
        )

      ///
      ///
      ///
      // ref.watch(messagesProvider(conversationInfo.id)).maybeWhen(
      //       data: (messages) {
      //         return ;
      //       },
      //       orElse: () => Center(
      //         child: LoadingWidget(),
      //       ),
      //       error: (e, _) {
      //         log(e.toString(), stackTrace: _);
      //         return Center(
      //           child: LoadingWidget(),
      //         );
      //       },
      //     ),
    ]);
  }
}
