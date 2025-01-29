import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';

import 'emoji_handler_box.dart';

class MessageTextField extends ConsumerStatefulWidget {
  final TextEditingController textController;
  final String id;
  const MessageTextField({
    super.key,
    required this.textController,
    required this.id,
  });

  @override
  ConsumerState<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends ConsumerState<MessageTextField> {
  bool rotateIcon = false;
  FocusNode? chatFocusNode;
  double bottomSpacing = 20;
  bool showSend = false;

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      chatFocusNode = FocusNode();
      chatFocusNode?.addListener(
        () => addListenerToFocusNode(),
      );
    });
  }

  addListenerToFocusNode() {
    if (chatFocusNode!.hasFocus) {
      bottomSpacing = 5;
      ref.read(showEmojiProvider.notifier).state = false;
    } else {
      bottomSpacing = 20;
    }
    setState(() {});
  }

  @override
  void dispose() {
    chatFocusNode?.removeListener(
      () => addListenerToFocusNode(),
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final showEmoji = ref.watch(
          showEmojiProvider,
        );
        return Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.only(
              bottom: MediaQuery.viewInsetsOf(context).bottom + bottomSpacing,
              left: 16,
              right: 16,
              top: 10),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MediaQuery.of(context).viewInsets.bottom > 0
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(
                  //     50,
                  //   ),
                  //   color: context.isDarkMode
                  //       ? Theme.of(context).bottomSheetTheme.backgroundColor
                  //       : Theme.of(context).dividerColor,
                  // ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // GestureDetector(
                        //   onTap: () {
                        //     ref
                        //         .read(
                        //           showEmojiProvider.notifier,
                        //         )
                        //         .state = !showEmoji;
                        //     if (!showEmoji) {
                        //       FocusManager.instance.primaryFocus?.unfocus();
                        //     } else {
                        //       chatFocusNode?.requestFocus();
                        //     }
                        //   },
                        //   child: Icon(
                        //     showEmoji
                        //         ? Icons.keyboard_alt_outlined
                        //         : Icons.emoji_emotions,
                        //     color: Theme.of(context).primaryColor,
                        //     size: 26,
                        //   ),
                        // ),
                        // addHorizontalSpacing(8),
                        Expanded(
                          child: TextFormField(
                            autocorrect: true,
                            enableSuggestions: true,
                            controller: widget.textController,
                            textCapitalization: TextCapitalization.sentences,
                            focusNode: chatFocusNode,
                            onChanged: (val) {
                              if (val.isNotEmpty) {
                                showSend = true;
                              } else {
                                showSend = false;
                                ref
                                    .read(showSendButtonProvider.notifier)
                                    .state = false;
                              }
                              setState(() {});
                            },
                            cursorColor: Theme.of(context).primaryColor,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(1),
                                  fontSize: 19,
                                ),
                            decoration: InputDecoration(
                                prefixIcon: GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(
                                          showEmojiProvider.notifier,
                                        )
                                        .state = !showEmoji;
                                    if (!showEmoji) {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    } else {
                                      chatFocusNode?.requestFocus();
                                    }
                                  },
                                  child: Icon(
                                    showEmoji
                                        ? Icons.keyboard_alt_outlined
                                        : Icons.emoji_emotions,
                                    color: Theme.of(context).primaryColor,
                                    size: 26,
                                  ),
                                ),
                                fillColor:
                                    context.theme.scaffoldBackgroundColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: (chatFocusNode?.hasFocus ?? false)
                                        ? PreluraColors.primaryColor
                                        : PreluraColors.greyColor
                                            .withOpacity(.5),
                                  ),
                                )),

                            // decoration: InputDecoration(
                            //   filled: false,
                            //   hintText: "Message...",
                            //   hintStyle: Theme.of(context)
                            //       .textTheme
                            //       .displayMedium!
                            //       .copyWith(
                            //         color: Theme.of(context)
                            //             .primaryColor
                            //             .withOpacity(0.5),
                            //         fontSize: 12.sp,
                            //         height: 1.7,
                            //       ),
                            //   border: InputBorder.none,
                            //   focusedBorder: InputBorder.none,
                            //   focusedErrorBorder: InputBorder.none,
                            //   errorBorder: InputBorder.none,
                            //   enabledBorder: InputBorder.none,
                            //   contentPadding: EdgeInsets.only(
                            //     bottom: 3.5,
                            //   ),
                            // ),
                          ),
                        ),
                        if (showSend || ref.watch(showSendButtonProvider))
                          GestureDetector(
                            onTap: () async {
                              ref
                                  .read(messagesProvider(widget.id).notifier)
                                  .sendMessage(
                                      widget.textController.text.trim());
                              widget.textController.clear();
                            },
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withAlpha(
                                      200,
                                    ),
                                child: SvgPicture.asset(
                                  "assets/icons/send_without_not.svg",
                                  height: 20,
                                  width: 20,
                                  colorFilter: ColorFilter.mode(
                                    PreluraColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                )),
                          )
                        else
                          SizedBox.shrink(),
                      ]),
                ),
                EmojiHandlerBox(
                  textController: widget.textController,
                ),
              ]),
        );
      },
    );
  }
}
