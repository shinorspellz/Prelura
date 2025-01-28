import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/primary_switch.dart';

import '../../res/utils.dart';

class PreluraSwitchWithText extends StatelessWidget {
  final String titleText;
  final bool? value;
  final VoidCallback? onTap;
  final Function(bool)? onChanged;
  final bool disabled;
  final String? subTitle;
  final String? trailingText;
  final double fontSize = 16;
  final TextStyle? textStyle;
  final double verticalPadding;
  final bool? addPadding;
  final Color? textColor;

  const PreluraSwitchWithText(
      {super.key,
      required this.titleText,
      this.value = false,
      this.onTap,
      this.onChanged,
      this.trailingText,
      this.subTitle,
      this.textStyle,
      this.verticalPadding = 5,
      this.addPadding,
      this.textColor,
      this.disabled = false});

  @override
  Widget build(BuildContext context) {
    final color = disabled
        ? Theme.of(context).textTheme.displayMedium!.color?.withOpacity(0.2)
        : null;
    log("$titleText is $disabled", name: "PreluraSwitchWithText");
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context)
                  .dividerColor, // Use the theme's divider color
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: (addPadding ?? true)
                            ? !(trailingText != null &&
                                    (subTitle ?? '').isNotEmpty)
                                ? EdgeInsets.only(bottom: 8)
                                : null
                            : null,
                        child: Text(
                          titleText ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: getDefaultSize(),
                                  fontWeight: FontWeight.w600,
                                  color: textColor ??
                                      Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color),
                        ),
                      ),
                      if (trailingText != null && (subTitle ?? '').isNotEmpty)
                        Text(
                          subTitle ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: color, fontSize: 13),
                        ),
                    ],
                  ),
                ),
                PreluraSwitch(
                    swicthValue: disabled ? false : value ?? false,
                    onChanged: disabled ? (value) {} : onChanged)
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
