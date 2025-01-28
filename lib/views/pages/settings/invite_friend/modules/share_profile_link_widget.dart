// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/invite_friend/invite_friend.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';

class ShareProfileLinkWidget extends StatefulWidget {
  const ShareProfileLinkWidget({super.key});

  @override
  State<ShareProfileLinkWidget> createState() => _ShareProfileLinkWidgetState();
}

class _ShareProfileLinkWidgetState extends State<ShareProfileLinkWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: 200,
      width: size.width - 20,
      decoration: ShapeDecoration(
        color: context.theme.scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Share profile link",
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
            ),
          ),
          Container(
            color: Colors.grey.shade600,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  profileLink,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                ),
              ),
            ),
          ),
          20.toHeight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PreluraButtonWithLoader(
              buttonColor: PreluraColors.primaryColor,
              customChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.copy),
                  4.toWidth,
                  Text(
                    "Copy",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: PreluraColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              onPressed: () {
                copyProfileLink(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

copyProfileLink(BuildContext context) async {
  await Clipboard.setData(ClipboardData(text: profileLink)).then((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Profile link copied to clipboard!"),
      ),
    );
  }).catchError((error) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Failed to copy profile link!"),
      ),
    );
  });
}
