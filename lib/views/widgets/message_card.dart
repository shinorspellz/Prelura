import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/time_formatter.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
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
    // log("The last message an offer::: $isLastMessageAnOffer");

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
                        offerInfo: model.offer!,
                      )
                    ] else
                      Text(
                        model.lastMessage!.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
                  formatChatTime(model.lastModified),
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
  final OfferInfo offerInfo;
  final String recipient;

  const BuildOfferRow({
    super.key,
    required this.text,
    required this.recipient,
    required this.offerInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      _buildOfferMessage(),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w400),
    );
  }

  String _buildOfferMessage() {
    if (!text.contains("offer_id")) {
      return text;
    }

    final bool isSender = recipient == offerInfo.buyer?.username;
    final OfferSubStateInfo? subInfo = offerInfo.children?.firstOrNull;
    final String offerStatus =
        (subInfo?.status ?? offerInfo.status)?.toLowerCase() ?? "unknown";

    if (offerInfo.status?.toLowerCase() == "pending") {
      return "${!isSender ? "You" : recipient} made an offer.";
    }

    return isSender
        ? "You $offerStatus $recipient offer."
        : "$recipient $offerStatus your offer.";
  }
}
