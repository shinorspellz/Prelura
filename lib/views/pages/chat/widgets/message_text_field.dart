import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

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
  bool isUploading = false;
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
        final showEmoji = ref.watch(showEmojiProvider);

        final imageState = ref.watch(messageImageProvider);

        if (imageState != null) {
          return Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 20,
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.file(
                    File(imageState.path),
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                addVerticalSpacing(5),
                AppButton(
                  text: "Send",
                  width: double.infinity,
                  loading: isUploading,
                  onTap: () async {
                    if (isUploading) return;
                    isUploading = true;
                    setState(() {});
                    await ref
                        .read(messagesProvider(widget.id).notifier)
                        .sendImage();
                    isUploading = true;
                    setState(() {});
                  },
                ),
              ]),
            ),
            Positioned(
                top: 10,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    ref
                        .read(
                          messageImageProvider.notifier,
                        )
                        .state = null;
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: PreluraColors.primaryColor.withOpacity(
                      0.4,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/CloseIcon.svg",
                      height: 18,
                      colorFilter: ColorFilter.mode(
                        PreluraColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                )),
          ]);
        }
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
                                    color: !showEmoji
                                        ? PreluraColors.greyColor
                                            .withOpacity(0.7)
                                        : Theme.of(context).primaryColor,
                                    size: 26,
                                  ),
                                ),
                                fillColor:
                                    context.theme.scaffoldBackgroundColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        ((chatFocusNode?.hasFocus ?? false) ||
                                                showEmoji)
                                            ? PreluraColors.primaryColor
                                            : PreluraColors.greyColor
                                                .withOpacity(.5),
                                  ),
                                )),
                          ),
                        ),
                        if (showSend || ref.watch(showSendButtonProvider))
                          GestureDetector(
                            onTap: () async {
                              if (widget.textController.text.trim().isEmpty) {
                                return;
                              }
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
                          GestureDetector(
                            onTap: () async {
                              ref
                                  .read(messagesProvider(widget.id).notifier)
                                  .pickImage();
                            },
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withAlpha(
                                      200,
                                    ),
                                child: SvgPicture.asset(
                                  "assets/icons/addIcon.svg",
                                  height: 20,
                                  width: 20,
                                  colorFilter: ColorFilter.mode(
                                    PreluraColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                )),
                          ),
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
