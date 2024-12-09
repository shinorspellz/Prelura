import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

class UIConstants {
  UIConstants._();
  static final UIConstants instance = UIConstants._();

  static Color? switchActiveColor(context) {
    return Theme.of(context)
        .switchTheme
        .trackColor
        ?.resolve({WidgetState.selected});
  }

  InputDecoration inputDecoration(
    BuildContext context, {
    bool hasFocus = false,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Widget? suffixWidget,
    String? hintText,
    String? labelText,
    String? prefixText,
    String? helperText,
    String? counterText = '',
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    EdgeInsets? contentPadding,
    bool isCollapsed = false,
    bool showCounter = false,
    bool enabled = true,
    bool showCurrency = false,
    BorderRadius? borderRadius,
  }) {
    return InputDecoration(
      label: labelText != null
          ? Text(labelText,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 13.sp,
                  height: 1.7,
                  color: hasFocus
                      ? PreluraColors.activeColor
                      : Theme.of(context).textTheme.displayMedium?.color))
          : null,
      enabled: enabled,
      fillColor: Theme.of(context).buttonTheme.colorScheme!.secondary,
      filled: true,
      isDense: true,
      isCollapsed: isCollapsed,
      alignLabelWithHint: true,
      suffixIcon: suffixIcon,
      suffix: suffixWidget,
      counterText: '',
      counter: showCounter ? null : const SizedBox.shrink(),
      prefixText: prefixIcon == null ? prefixText : null,
      prefixStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
      suffixStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: PreluraColors.boldGreyText,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
      hintText: hintText,
      helperText: helperText,
      hintStyle: hintStyle ??
          Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                fontSize: 12.sp,
                height: 1.7,
              ),
      contentPadding:
          contentPadding ?? const EdgeInsets.fromLTRB(12, 12, 12, 12),
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1,
          ),
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(8))),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent, //Theme.of(context).primaryColor,
            width: 0,
          ),
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(8))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(8))),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(8))),
    );
  }
}
