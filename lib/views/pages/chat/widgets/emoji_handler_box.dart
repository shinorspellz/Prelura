import 'dart:developer';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/chat/messages_provider.dart';

class EmojiHandlerBox extends StatefulHookWidget {
  final TextEditingController textController;
  const EmojiHandlerBox({
    super.key,
    required this.textController,
  });

  @override
  State<EmojiHandlerBox> createState() => _EmojiHandlerBoxState();
}

class _EmojiHandlerBoxState extends State<EmojiHandlerBox> {
  @override
  Widget build(BuildContext context) {
    final emojiIconColor = Theme.of(context).primaryColor;
    return Consumer(
      builder: (context, ref, child) {
        final showEmoji = ref.watch(
          showEmojiProvider,
        );
        return Offstage(
          offstage: !showEmoji,
          child: SizedBox(
            height: 250,
            child: EmojiPicker(
              textEditingController: widget.textController,
              onBackspacePressed: null,
              config: Config(
                height: 250,
                checkPlatformCompatibility: true,
                emojiTextStyle: TextStyle(
                  fontSize: 30,
                ),
                emojiViewConfig: EmojiViewConfig(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    noRecents: Text(
                      "No Resents",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontSize: 18,
                          ),
                    )),
                viewOrderConfig: ViewOrderConfig(
                  top: EmojiPickerItem.categoryBar,
                  middle: EmojiPickerItem.emojiView,
                  bottom: EmojiPickerItem.searchBar,
                ),
                skinToneConfig: const SkinToneConfig(),
                categoryViewConfig: CategoryViewConfig(
                  iconColor: emojiIconColor.withOpacity(
                    0.5,
                  ),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  indicatorColor: emojiIconColor,
                  iconColorSelected: emojiIconColor,
                ),
                bottomActionBarConfig: const BottomActionBarConfig(
                  enabled: false,
                ),
                searchViewConfig: const SearchViewConfig(
                  backgroundColor: Colors.transparent,
                ),
              ),
              onEmojiSelected: (a, b) {
                log("::::From the emoji end::: ${widget.textController.text.isNotEmpty}");
                ref.read(showSendButtonProvider.notifier).state =
                    widget.textController.text.isNotEmpty;
                setState(() {});
              },
            ),
          ),
        );
      },
    );
  }
}
