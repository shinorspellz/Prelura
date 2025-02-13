// import 'dart:developer';

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/model/chat/message_model.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/date_time_extension.dart';
import 'package:prelura_app/views/widgets/full_screen_image.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:sizer/sizer.dart';
// import 'package:sticky_grouped_list_plus/sticky_grouped_list.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'chat_text_box.dart';
import 'istyping_handler_box.dart';
import 'message_helper.dart';
import 'offer_product_card.dart';

class MessageConversationBuilder extends ConsumerStatefulWidget {
  final String? avatar;
  final ScrollController scrollController;
  final TextEditingController textController;
  final int conversationId;

  const MessageConversationBuilder({
    super.key,
    this.avatar,
    required this.conversationId,
    required this.scrollController,
    required this.textController,
  });

  @override
  ConsumerState<MessageConversationBuilder> createState() =>
      _MessageConversationBuilderState();
}

class _MessageConversationBuilderState
    extends ConsumerState<MessageConversationBuilder> {
  bool isFirstTime = true;
  double _listViewLeftPosition = 0;
  UserModel? currentUser;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(fetchMoreMessages);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(fetchMoreMessages);
    // widget.scrollController.dispose();
    super.dispose();
  }

  // Fetch more messages as user scrolls near the top
  void fetchMoreMessages() {
    // log(":::: Fetching more messages :::: 0");
    final isLoadingMore = false;
    // ref.read(chatRoomStateProvider.notifier).state ==
    // ChatRoomActivity.loadingMoreMessages;
    if (!widget.scrollController.hasClients) return;

    if (widget.scrollController.position.pixels >=
            widget.scrollController.position.maxScrollExtent - 200 &&
        !isLoadingMore) {
      log(":::: Fetching more messages :::: 1");
      // ref.read(chatRoomProvider.notifier).loadOlderMessages();
    }
  }

  // Handle horizontal drag for ListView positioning
  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _listViewLeftPosition =
          (_listViewLeftPosition - details.delta.dx).clamp(0.0, 120.0);
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    setState(() {
      _listViewLeftPosition = 0;
    });
  }

  // Build the message row with message bubbles and profile picture
  Widget _buildMessageRow(MessageModel chatInfo, bool isMe) {
    final canShowImage = MessageHelper.canShowImage(chatInfo);
    double imageSize =
        (widget.avatar == null || (widget.avatar?.isEmpty ?? true)) ? 21.5 : 25;
    // final messageType = MessageHelper.getMessageType(chatInfo);
    return Padding(
        padding: EdgeInsets.only(
            top: MessageHelper.getMyTopSpace(
          chatInfo,
        )),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isMe && canShowImage && _listViewLeftPosition == 0)
                Padding(
                    padding: EdgeInsets.only(
                      right: 8,
                      left: 14,
                    ),
                    child: ProfilePictureWidget(
                      profilePicture: widget.avatar,
                      height: imageSize,
                      width: imageSize,
                      username: chatInfo.sender.username,
                    ))
              else if (_listViewLeftPosition == 0)
                addHorizontalSpacing(isMe ? 0 : 47)
              else
                SizedBox.shrink(),
              Expanded(
                child: Stack(children: [
                  _buildMessageTimestamp(chatInfo),
                  _buildMessageBubble(chatInfo, isMe),
                ]),
              ),
            ]));
  }

  // Message bubble for different message types
  Widget _buildMessageBubble(MessageModel chatInfo, bool isMe) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width, // Prevents overflow
        ),
        child: CupertinoContextMenu.builder(
            enableHapticFeedback: true,
            actions: [
              CupertinoContextMenuAction(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: chatInfo.text));
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              if (isMe)
                CupertinoContextMenuAction(
                  onPressed: () {
                    ref
                        .read(messagesProvider(widget.conversationId.toString())
                            .notifier)
                        .deleteMessage(chatInfo.id.toString());
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  trailingIcon: CupertinoIcons.delete,
                  child: const Text('Delete'),
                ),
            ],
            builder: (context, animation) {
              double imageSize = isMe ? 21.5 : 25;
              final canShowImage = MessageHelper.canShowImage(chatInfo);
              return VisibilityDetector(
                key: Key(chatInfo.id.toString()),
                onVisibilityChanged: (visibilityInfo) {
                  if (visibilityInfo.visibleFraction > 0.9 &&
                      !(chatInfo.read ?? false)) {
                    // myNotifier.markMessageAsRead(
                    //     chatInfo.senderName!, [chatInfo.id.toString()]);
                  }
                },
                child: Transform.translate(
                  offset: Offset(-_listViewLeftPosition, 0),
                  child: Row(
                      mainAxisAlignment: isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        if (chatInfo.text.isNotEmpty)
                          PlainMessageBox(
                            isMe: isMe,
                            chatInfo: chatInfo,
                            currentUsername: currentUser?.username ?? "",
                          ),
                        if (chatInfo.text.isNotEmpty &&
                            isMe &&
                            canShowImage) ...[
                          Padding(
                            padding: EdgeInsets.only(
                              right: 14,
                            ),
                            child: ProfilePictureWidget(
                              profilePicture: chatInfo.sender.profilePictureUrl,
                              height: imageSize,
                              width: imageSize,
                              username: chatInfo.sender.username,
                            ),
                          ),
                        ] else ...[
                          (imageSize + 17.0).horizontalSpacing,
                        ],
                        if (chatInfo.imageUrls != null &&
                            chatInfo.imageUrls.isNotEmpty)
                          MessageImageBuilder(
                            chatInfo: chatInfo,
                          ),
                      ]),
                ),
              );
            }));
  }

  // Timestamp display on horizontal drag
  Widget _buildMessageTimestamp(MessageModel chatInfo) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: -100,
      child: Center(
        child: Transform.translate(
          offset: Offset(-_listViewLeftPosition, 0),
          child: Text(
            DateFormat("hh:mm a").format(chatInfo.createdAt!).toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    currentUser = ref.watch(userProvider).valueOrNull;
    final chats = ref.watch(messagesProvider(
      widget.conversationId.toString(),
    ));
    final chatState = ref.watch(
      chatRoomStateProvider.notifier,
    );

    return chats.when(
      data: (chatList) {
        log(":::Chat List count::: ${chatList.length}");
        if (chatList.isEmpty) {
          return SizedBox(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Center(
              child: Text(
                "No messages Yet!",
              ),
            ),
          );
        }
        MessageHelper.messages = chatList;
        return GestureDetector(
          onHorizontalDragUpdate: (details) => _onHorizontalDragUpdate(details),
          onHorizontalDragEnd: _onHorizontalDragEnd,
          child: Column(children: [
            if (chatState.state == ChatRoomActivity.loadingMoreMessages)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: LoadingWidget()),
              ),

            // .paddingOnly(bottom: 15, top: 30),
            GroupedListView<MessageModel, String>(
              physics: const NeverScrollableScrollPhysics(),
              elements: chatList,
              shrinkWrap: true,
              floatingHeader: true,
              groupBy: (element) =>
                  DateFormat("dd-MM-y").format(element.createdAt!),
              groupComparator: (value1, value2) => value1.compareTo(value2),
              sort: false,
              reverse: true,
              useStickyGroupSeparators: true,
              padding: EdgeInsets.zero,
              groupHeaderBuilder: (value) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      value.createdAt!.getChatHeader,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .color
                                ?.withOpacity(0.8),
                          ),
                    ),
                  ),
                );
              },
              itemBuilder: (context, chatInfo) {
                final isMe = chatInfo.sender.username == currentUser?.username;
                return _buildMessageRow(chatInfo, isMe);
              },
            ),
            addVerticalSpacing(15),
            TypingHandlerBox(
              textController: widget.textController,
              conversationId: widget.conversationId.toString(),
            ),
            // addVerticalSpacing(
            //     MediaQuery.of(context).viewPadding.bottom > 0 ? 85 : 0),
            // if (ref.watch(
            //   showEmojiProvider,
            // ))
            // addVerticalSpacing(250),
          ]),
        );
      },
      loading: () => SizedBox(
        height: deviceSize.height,
        width: deviceSize.width,
        child: LoadingWidget(),
      ),
      error: (error, stackTrace) => SizedBox(
        height: deviceSize.height,
        width: deviceSize.width,
        child: Center(
          child: Text(
            "An error occurred, please try again.",
          ),
        ),
      ),
    );
  }
}

class MessageImageBuilder extends StatelessWidget {
  final MessageModel chatInfo;
  const MessageImageBuilder({
    super.key,
    required this.chatInfo,
  });

  @override
  Widget build(BuildContext context) {
    final String imagePath = chatInfo.imageUrls[0].runtimeType == String
        ? jsonDecode(chatInfo.imageUrls[0])["url"]
        : chatInfo.imageUrls[0]['url'];

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FullScreenImage(
                imageUrl: [
                  ProductBanners(
                    url: imagePath,
                    thumbnail: '',
                  ),
                ],
                initialIndex: 0,
                isLocal: false,
              ),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ImageBuilder(
            height: 200,
            width: 70.w,
            imageUrl: imagePath,
          ),
        ),
      ),
    );
  }
}
