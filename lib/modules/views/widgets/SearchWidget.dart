import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class Searchwidget extends StatefulWidget {
  final String? label;
  final int? minLines;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final TextInputFormatter? formatter;
  final TextCapitalization? textCapitalization;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final int? maxLength;
  final TextEditingController? controller;
  final dynamic validator;
  final bool shouldReadOnly;
  final double? minWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? labelStyle;
  final bool enabled;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final ValueChanged? onTapOutside;
  final InputBorder? enabledBorder;
  final bool showInputBorder;
  final bool autofocus;
  final bool cancelButton;
  final VoidCallback? onCancel;
  final ValueChanged<bool>? onFocused;
  final EdgeInsets? padding;

  const Searchwidget(
      {super.key,
      this.label,
      this.minLines,
      this.keyboardType,
      required this.obscureText,
      this.hintText,
      this.formatter,
      this.textCapitalization,
      this.onChanged,
      this.onSaved,
      this.onTap,
      this.maxLength,
      this.controller,
      this.validator,
      required this.shouldReadOnly,
      this.minWidth,
      this.suffixIcon,
      this.prefixIcon,
      this.labelStyle,
      required this.enabled,
      this.hintStyle,
      this.focusNode,
      this.onTapOutside,
      this.enabledBorder,
      required this.showInputBorder,
      required this.autofocus,
      required this.cancelButton,
      this.onCancel,
      this.padding,
      this.onFocused});

  @override
  State<Searchwidget> createState() => _SearchwidgetState();
}

class _SearchwidgetState extends State<Searchwidget> {
  late final Widget suffixIconII;
  FocusNode? focusNodeZZZ;
  late final TextEditingController mController;
  bool _hasText = false;
  bool showCancel = false;
  bool showText = false;

  @override
  initState() {
    super.initState();
    mController = widget.controller ?? TextEditingController();
    suffixIconII = widget.suffixIcon ??
        InkResponse(
          onTap: () {},
          child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(5),
              child: const Icon(Icons.close_rounded)),
        );

    if (widget.focusNode == null) {
      focusNodeZZZ = FocusNode();
      focusNodeZZZ?.addListener(addListenerToFocusNode);
    } else {
      widget.focusNode?.addListener(addListenerToFocusNodeWidget);
    }
  }

  void clearText() {
    widget.controller?.clear();
    _hasText = false;
    mController.text = '';
    widget.onChanged?.call('');
    setState(() {});
  }

  void addListenerToFocusNode() async {
    if (focusNodeZZZ!.hasFocus) {
      showCancel = true;
    } else {
      showCancel = false;
    }

    widget.onFocused?.call(focusNodeZZZ!.hasFocus);

    setState(() {});
    if (focusNodeZZZ!.hasFocus) {
      Future.delayed(const Duration(milliseconds: 302), () {
        showText = true;
        setState(() {});
      });
    } else {
      showText = false;
      setState(() {});
    }
  }

  void addListenerToFocusNodeWidget() async {
    if (widget.focusNode!.hasFocus) {
      showCancel = true;
    } else {
      showCancel = false;
    }

    setState(() {});
    if (widget.focusNode!.hasFocus) {
      await Future.delayed(const Duration(milliseconds: 302), () {
        showText = true;
        setState(() {});
      });
    } else {
      showText = false;
      setState(() {});
    }
  }

  @override
  dispose() {
    super.dispose();
    widget.focusNode?.removeListener(addListenerToFocusNodeWidget);
    focusNodeZZZ?.removeListener(addListenerToFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: widget.maxLength != null ? 7.h : 5.h,
              width: widget.minWidth ?? 100.0.w,
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                autofocus: widget.autofocus,
                autocorrect: false,
                enableSuggestions: false,
                minLines: widget.minLines ?? 1,
                controller: mController,
                maxLength: widget.maxLength,
                onSaved: widget.onSaved,
                enabled: widget.enabled,
                textCapitalization:
                    widget.textCapitalization ?? TextCapitalization.none,
                onTap: widget.onTap,
                onTapOutside: widget.onTapOutside,
                focusNode: widget.focusNode ?? focusNodeZZZ,
                onChanged: (text) {
                  if (widget.onChanged != null) widget.onChanged!(text);
                  _hasText = text.isNotEmpty;
                  setState(() {});
                },
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText,
                obscuringCharacter: '●',
                inputFormatters: [
                  widget.formatter ??
                      FilteringTextInputFormatter.singleLineFormatter
                ],
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).primaryColor.withOpacity(1),
                    ),
                readOnly: widget.shouldReadOnly,
                onFieldSubmitted: (val) {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: context.isDarkMode
                          ? Colors.grey[400]!
                          : Theme.of(context).dividerColor,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: PreluraColors.activeColor,
                      width: 2.0,
                    ),
                  ),
                  filled: false,
                  // fillColor: showGradient ? null : Theme.of(context).buttonTheme.colorScheme!.secondary,
                  //Ternary switch is important. It prevents a subtle bug where
                  // sometimes after tapping on cancel and tapping again the
                  // field is not activated
                  suffix: _hasText
                      ? InkResponse(
                          onTap: () {
                            if (showCancel) clearText();
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(100)),
                              padding: const EdgeInsets.all(3),
                              child: const Icon(
                                Icons.close_rounded,
                                color: Colors.white,
                                size: 12,
                              )),
                        )
                      : const SizedBox.shrink(),
                  // suffixIcon: _hasText ? suffixIconII : null,
                  suffixIconConstraints:
                      const BoxConstraints(maxHeight: 20, maxWidth: 24),

                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).iconTheme.color,
                  ), //widget.prefixIcon,
                  suffixStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: PreluraColors.boldGreyText,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                  isDense: true,
                  counterText: "",
                  hintText: widget.hintText,
                  hintStyle: widget.hintStyle ??
                      Theme.of(context).textTheme.labelLarge!.copyWith(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          fontSize: 11.sp,
                          overflow: TextOverflow.clip),
                  contentPadding: const EdgeInsets.fromLTRB(10, 13, 14.5, 8),
                ),
              ),
            ),
          ),
        ),
        if (widget.cancelButton)
          AnimatedContainer(
            width: showCancel ? 70 : 0,
            height: showCancel ? 30 : 0,
            color: Colors.transparent,
            alignment: Alignment.centerRight,
            duration: const Duration(milliseconds: 150),
            padding: showCancel
                ? const EdgeInsets.fromLTRB(15, 0, 0, 0)
                : EdgeInsets.zero,
            // margin: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () {
                clearText();
                widget.onCancel?.call();
                // widget.focusNode?.unfocus();
                if (widget.focusNode == null) {
                  focusNodeZZZ?.unfocus();
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showText)
                    Expanded(
                      child: Text(
                        "Cancel",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: PreluraColors.primaryColor),
                      ),
                    ),
                ],
              ),
            ),
          ),
        if (!widget.cancelButton)
          const SizedBox(
            width: 70,
          )
      ]),
    );
  }
}
