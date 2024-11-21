import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';

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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          border: Border.all(
              width: bgColor != null ? 1 : 0,
              color: bgColor == null
                  ? borderColor != null
                      ? borderColor
                      : Colors.transparent
                  : borderColor),
          borderRadius: BorderRadius.circular(8),
          color: isDisabled
              ? PreluraColors.disabledButonColor
              : bgColor ?? PreluraColors.activeColor.withOpacity(0.8),
        ),
        height: height ?? 48,
        width: width ?? 150,
        child: Row(
          mainAxisAlignment: textWidget != null
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            textWidget ?? SizedBox.shrink(),
            textWidget != null
                ? Text(
                    text!,
                    style: TextStyle(
                      fontSize: fontSize ?? 14,
                      color: textColor ?? PreluraColors.activeColor,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                : Center(
                    child: Text(
                      text!,
                      style: TextStyle(
                        fontSize: fontSize ?? 14,
                        color: textColor ?? PreluraColors.activeColor,
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
