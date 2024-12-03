import 'package:flutter/material.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.text = "text",
      this.width,
      required this.onTap,
      this.height,
      this.fontSize,
      this.textColor,
      this.bgColor,
      this.isDisabled = false,
      this.borderColor = PreluraColors.activeColor,
      this.textWidget,
      this.fontWeight = FontWeight.w400});
  const AppButton.grey({
    super.key,
    this.text = "text",
    this.width,
    required this.onTap,
    this.height,
    this.fontSize,
    this.textColor = PreluraColors.activeColor,
    this.isDisabled = false,
    this.bgColor,
    this.borderColor = PreluraColors.activeColor,
    this.textWidget,
    this.fontWeight = FontWeight.w400,
  });
  final Color? textColor;
  final Color? bgColor;
  final Color borderColor;
  final String? text;
  final Widget? textWidget;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final void Function()? onTap;
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
              width: bgColor != null ? 1 : 0,
              color: bgColor == null
                  ? isDisabled
                      ? borderColor.withOpacity(0.5)
                      : borderColor ?? Colors.transparent
                  : isDisabled
                      ? borderColor.withOpacity(0.5)
                      : borderColor),
          borderRadius: BorderRadius.circular(8),
          color: isDisabled
              ? PreluraColors.activeColor.withOpacity(0.2)
              : bgColor ?? PreluraColors.activeColor.withOpacity(0.8),
        ),
        height: height ?? 40,
        width: width ?? 150,
        child: Row(
          mainAxisAlignment: textWidget != null
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            textWidget ?? const SizedBox.shrink(),
            textWidget != null
                ? Text(
                    text!,
                    style: TextStyle(
                      fontSize: fontSize ?? 10.sp,
                      color: isDarkMode
                          ? isDisabled
                              ? PreluraColors.white.withOpacity(0.5)
                              : PreluraColors.white
                          : bgColor != null
                              ? PreluraColors.activeColor
                              : PreluraColors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                : Center(
                    child: Text(
                      text!,
                      style: TextStyle(
                        fontSize: fontSize ?? 10.sp,
                        color: isDarkMode
                            ? isDisabled
                                ? PreluraColors.white.withOpacity(0.5)
                                : PreluraColors.white
                            : bgColor != null
                                ? PreluraColors.activeColor
                                : PreluraColors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
