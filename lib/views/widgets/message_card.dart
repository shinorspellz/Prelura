import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/conversations_provider.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/time_formatter.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';

import 'red_dot.dart';

class MessageCard extends ConsumerWidget {
  const MessageCard({
    super.key,
    required this.model,
  });

  final ConversationModel model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log("The last message::: ${model.lastMessage?.toJson()}",
    //     name: "MessageCard");
    bool isLastMessageAnOffer = model.offer != null;
    // log("The last message an offer::: $isLastMessageAnOffer");
    final user = ref.watch(userProvider).value;
    final isCurrentUserLastMessage =
        user?.username == model.lastMessage?.sender.username;
    final bool read = model.lastMessage == null
        ? true
        : isCurrentUserLastMessage
            ? true
            : model.lastMessage!.read!;

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
        if (model.lastMessage != null) {
          ref
              .read(updateCReadMessageProvider.notifier)
              .updateReadMessage(model.lastMessage!.id.toString());
          ref.refresh(conversationProvider.future);
        }
        context.router.push(ChatRoute(
          id: model.id!,
          username: model.recipient?.username ?? "",
          avatarUrl: model.recipient?.profilePictureUrl,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // User Avatar
            GestureDetector(
              onTap: () => context.router.push(ProfileDetailsRoute(
                username: model.recipient?.username ?? "",
              )),
              child: ProfilePictureWidget(
                height: 40,
                width: 40,
                profilePicture: model.recipient?.profilePictureUrl,
                username: model.recipient?.username,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            model.recipient?.username ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          if (!read) RedDot()
                        ],
                      ),
                    ),
                    Text(
                      formatChatTime(model.lastModified!),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  if (model.isTyping ?? false) ...[
                    Text(
                      "Typing...",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w400),
                    )
                  ] else if (model.lastMessage?.text != null) ...[
                    // const SizedBox(height: 5),
                    if (model.lastMessage?.imageUrls.isNotEmpty &&
                        !isLastMessageAnOffer) ...[
                      Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: SizedBox(
                            height: 26,
                            width: 23,
                            child: CachedNetworkImage(
                              errorWidget: (context, url, error) => Container(
                                color: PreluraColors.grey,
                              ),
                              imageUrl: jsonDecode(
                                  model.lastMessage?.imageUrls[0])["url"],
                              fit: BoxFit.cover,
                              placeholder: (context, url) {
                                return ShimmerBox(
                                  height: 26,
                                  width: 23,
                                );
                              },
                              fadeInDuration: Duration.zero,
                              fadeOutDuration: Duration.zero,
                            ),
                          ),
                        ),
                        addHorizontalSpacing(5),
                        Text(
                          model.lastMessage?.sender.username == user?.username
                              ? "You sent a picture"
                              : "${model.lastMessage?.sender.username} sent a picture",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                fontWeight: (model.lastMessage?.read ?? false)
                                    ? FontWeight.w400
                                    : FontWeight.w400,
                              ),
                        ),
                      ])
                    ] else if (isLastMessageAnOffer) ...[
                      addVerticalSpacing(5),
                      BuildOfferRow(
                        text: model.lastMessage!.text,
                        recipient: model.recipient?.username ?? "",
                        offerInfo: model.offer!,
                        lastImageUrl: model.lastMessage?.imageUrls,
                      )
                    ] else
                      Text(
                        model.lastMessage!.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: (model.lastMessage?.read ?? false)
                                  ? FontWeight.w400
                                  : FontWeight.w500,
                            ),
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

            const SizedBox(height: 5),
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
  final dynamic lastImageUrl;

  const BuildOfferRow({
    super.key,
    required this.text,
    required this.recipient,
    this.lastImageUrl,
    required this.offerInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: SizedBox(
          height: 26,
          width: 23,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) => Container(
              color: PreluraColors.grey,
            ),
            imageUrl: offerInfo.products!.first.imagesUrl!.first.url!,
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return ShimmerBox(
                height: 26,
                width: 23,
              );
            },
            fadeInDuration: Duration.zero,
            fadeOutDuration: Duration.zero,
          ),
        ),
      ),
      addHorizontalSpacing(5),
      Text(
        _buildOfferMessage(lastImageUrl != null),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: (offerInfo.updatedAt == null)
                  ? FontWeight.w500
                  : FontWeight.w400,
            ),
      ),
    ]);
  }

  String _buildOfferMessage(bool isImage) {
    if (!text.contains("offer_id") && !isImage) {
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
