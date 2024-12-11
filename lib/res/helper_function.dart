import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:sizer/sizer.dart';

import '../modules/views/widgets/gap.dart';
import 'render_svg.dart';

class HelperFunction {
  static BuildContext? context;

  static showToast({
    required String message,
    bool isError = false,
    String? svgPath,
    bool fromTop = false,
    Color? backgroundColor,
    bool isWarning = false,
  }) {
    showModalBottomSheet(
      context: context!,
      enableDrag: false,
      backgroundColor: PreluraColors.primaryColor,
      barrierColor: Colors.transparent,
      builder: (context) {
        Future.delayed(Duration(seconds: 2), () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        });
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Row(children: [
            addHorizontalSpacing(5),
            Expanded(
              child: Text(
                message ?? "",
                style: Theme.of(context!).textTheme.bodyMedium!.copyWith(
                      color: PreluraColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                // maxLines: 1,
                overflow: TextOverflow.clip,
              ),
            ),
            addHorizontalSpacing(5),
          ]),
        );
      },
    );
  }
}