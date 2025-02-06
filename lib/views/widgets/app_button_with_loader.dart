import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreluraButtonWithLoader extends StatelessWidget {
  final String? buttonTitle;
  final VoidCallback? onPressed;
  final bool enableButton;
  final bool showLoadingIndicator, isOutline;
  final double? butttonWidth;
  @Deprecated("Use newButtonHeight instead")
  final double? buttonHeight;
  final double? newButtonHeight;
  final TextStyle? buttonTitleTextStyle;
  final Color? buttonColor;
  final Color? splashColor;
  final double? borderRadius;
  final Widget? customChild;
  final double? elevation;
  final Color? borderColor;
  const PreluraButtonWithLoader(
      {super.key,
      required this.onPressed,
      this.buttonTitle,
      this.enableButton = true,
      this.buttonHeight,
      this.buttonTitleTextStyle,
      this.splashColor,
      this.buttonColor,
      this.butttonWidth,
      this.borderRadius,
      this.showLoadingIndicator = false,
      this.isOutline = false,
      this.customChild,
      this.newButtonHeight,
      this.elevation = 0,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: showLoadingIndicator ? () {} : _buttonPressedState,
      disabledColor: Colors.transparent, // Make it fully transparent
      focusElevation: 0,
      // VmodelColors.greyColor.withOpacity(0.5),
      disabledTextColor: Theme.of(context).primaryColor.withOpacity(0.2),
      elevation: elevation ?? 0,
      minWidth: butttonWidth ?? (MediaQuery.of(context).size.width),
      height: newButtonHeight ?? 40, //buttonHeight ?? 50,
      textColor: enableButton == true
          ? Theme.of(context).buttonTheme.colorScheme!.onPrimary
          : Theme.of(context).primaryColor.withOpacity(0.2),
      color: isOutline
          ? Colors.transparent
          : enableButton == true
              ? buttonColor ??
                  Theme.of(context).buttonTheme.colorScheme?.surface
              : Theme.of(context)
                  .buttonTheme
                  .colorScheme
                  ?.surface
                  .withOpacity(.5),
      shape: isOutline
          ? RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(5), // Rounded corners (optional)
              side: BorderSide(
                color: borderColor ??
                    buttonColor ??
                    Theme.of(context)
                        .buttonTheme
                        .colorScheme!
                        .surface, // Outline color
                width: 1.4, // Outline width
              ),
            )
          : const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                // Radius.circular(borderRadius ?? 8),
                Radius.circular(5),
              ),
            ),
      splashColor: Colors.transparent,
      child: showLoadingIndicator
          ? SizedBox(
              // width: butttonWidth ?? MediaQuery.of(context).size.width,
              width: (butttonWidth != null)
                  ? (butttonWidth! * 0.7)
                  : MediaQuery.of(context).size.width,
              // child: Center(
              //     child: Container(
              //       height: 36,
              //         width: 36,
              //         child: Lottie.asset('assets/images/animations/vmodel_loader.json'
              //         )))

              child: Container(
                color: Colors.transparent, // Debugging color

                child: const Center(
                    child: CupertinoActivityIndicator(
                  color: Colors.white,
                )),
              ),
            )
          : customChild ??
              Text(
                buttonTitle ?? "",
                style: isOutline
                    ? buttonTitleTextStyle ??
                        Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).primaryColor,

                              fontWeight: FontWeight.w600,
                              // fontSize: 12.sp,
                            )
                    : enableButton
                        ? buttonTitleTextStyle ??
                            Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: enableButton
                                      ? Theme.of(context)
                                          .buttonTheme
                                          .colorScheme!
                                          .onPrimary
                                      : Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.2),
                                  fontWeight: FontWeight.w600,
                                  // fontSize: 12.sp,
                                )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).disabledColor,
                              fontWeight: FontWeight.w600,
                              // fontSize: 12.sp,
                            ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
    );
  }

  VoidCallback? get _buttonPressedState {
    if (enableButton && !showLoadingIndicator) {
      return onPressed;
    } else if (enableButton && showLoadingIndicator) {
      return () {};
    }
    return null;
  }
}
