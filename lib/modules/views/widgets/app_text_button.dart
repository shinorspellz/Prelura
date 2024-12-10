import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../res/typography/typography.dart';

class PreluraTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? fontSize;
  final void Function()? onLongPress;
  final ButtonStyle? style;
  final void Function(bool)? onFocusChange;
  final void Function(bool)? onHover;
  final bool? autofocus;
  final Clip? clipBehavior;
  final WidgetStatesController? statesController;
  final FocusNode? focusNode;
  final TextStyle? textStyle;
  final bool showLoadingIndicator;
  final Color? loadingIndicatorColor;

  const PreluraTextButton({
    super.key,
    this.onPressed,
    this.onLongPress,
    this.style,
    this.onFocusChange,
    this.onHover,
    this.autofocus,
    this.clipBehavior,
    this.statesController,
    this.focusNode,
    this.textStyle,
    required this.text,
    this.fontSize,
    this.showLoadingIndicator = false,
    this.loadingIndicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: showLoadingIndicator ? null : onPressed,
        onLongPress: () {},
        style: ButtonStyle(textStyle: WidgetStateProperty.all(promptTextStyle)),
        onFocusChange: onFocusChange,
        onHover: onHover,
        autofocus: false,
        clipBehavior: Clip.none,
        statesController: statesController,
        focusNode: focusNode,
        child: showLoadingIndicator
            ? Center(
                child: CupertinoActivityIndicator(
                  color:
                      loadingIndicatorColor ?? Theme.of(context).primaryColor,
                ),
              )
            : Text(text,
                style: textStyle ??
                    Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        )));
  }
}

Widget VButton({
  required String title,
  void Function()? onTap,
  required BuildContext context,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 32,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Theme.of(context).primaryColor,
        color: Theme.of(context).buttonTheme.colorScheme?.primary,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              // color: Theme.of(context).buttonTheme.colorScheme?.secondary,
              color: PreluraColors.background,
            ),
      ),
    ),
  );
}
