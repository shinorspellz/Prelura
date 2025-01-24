import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

class MessageCard extends ConsumerWidget {
  const MessageCard({
    super.key,
    required this.model,
  });

  final ConversationModel model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("The last message::: ${model.lastMessage?.toJson()}");
    bool isLastMessageAnOffer = model.offer != null;
    log("The last message an offer::: $isLastMessageAnOffer");

    return GestureDetector(
      onTap: () {
        if (isLastMessageAnOffer) {
          ref
              .read(
            offerProvider.notifier,
          )
              .updateOfferState(
            {"activeOffer": model},
          );
        }
        context.router.push(ChatRoute(
          id: model.id,
          username: model.recipient.username,
          avatarUrl: model.recipient.profilePictureUrl,
          isOffer: isLastMessageAnOffer,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Avatar
            GestureDetector(
              onTap: () => context.router.push(
                  ProfileDetailsRoute(username: model.recipient.username)),
              child: ProfilePictureWidget(
                height: 40,
                width: 40,
                profilePicture: model.recipient.profilePictureUrl,
                username: model.recipient.username,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.recipient.username,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  if (model.lastMessage?.text != null) ...[
                    // const SizedBox(height: 5),
                    if (isLastMessageAnOffer) ...[
                      addVerticalSpacing(5),
                      BuildOfferRow(
                        text: model.lastMessage!.text,
                        recipient: model.recipient.username,
                      )
                    ] else
                      Text(
                        model.lastMessage!.text,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                  ]

                  // const SizedBox(height: 5),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(6),
                  //   child: Image.asset(
                  //     itemImageUrl,
                  //     width: 40,
                  //     height: 40,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  DateFormat(DateFormat.HOUR_MINUTE).format(model.lastModified),
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildOfferRow extends ConsumerWidget {
  final String text;
  final String recipient;
  const BuildOfferRow({
    super.key,
    required this.text,
    required this.recipient,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (text.contains("offer_id")) {
      OfferInfo offerInfo = offerInfoFromJson(text.replaceAll("'", "\""));
      bool isSender = recipient == offerInfo.buyer?.username;
      return Row(children: [
        RenderSvg(
          svgPath: 'assets/icons/offer.svg',
          svgWidth: 16,
          svgHeight: 16,
        ),
        addHorizontalSpacing(5),
        Text(
          offerInfo.status?.toLowerCase() == "pending"
              ? "${!isSender ? "You" : recipient} made an offer."
              : isSender
                  ? "You ${offerInfo.status?.toLowerCase()} $recipient offer."
                  : "$recipient ${offerInfo.status?.toLowerCase()} your offer.",
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
      ]);
    }
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }
}
