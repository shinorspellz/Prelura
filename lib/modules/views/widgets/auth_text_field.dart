import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/profanity/filter.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../res/colors.dart';
import '../../../res/ui_constants.dart';

class PreluraAuthTextField extends ConsumerStatefulWidget {
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
  final String? Function(String?)? validator;
  final bool shouldReadOnly;
  final double? minWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? labelStyle;
  final bool enabled;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final bool isDescription;
  final EdgeInsets? padding;
  final double? height;
  final TextAlign? textAlign;

  /// formats the textfeild to a password version
  final bool isPassword;

  const PreluraAuthTextField(
      {super.key,
      this.label,
      this.minLines,
      this.onChanged,
      this.onTap,
      this.keyboardType,
      this.formatter,
      this.onSaved,
      this.obscureText = false,
      this.hintText,
      this.maxLength,
      this.controller,
      this.validator,
      this.textCapitalization,
      this.shouldReadOnly = false,
      trailing,
      this.suffixIcon,
      this.enabled = true,
      this.minWidth,
      this.prefixIcon,
      this.labelStyle,
      this.hintStyle,
      this.focusNode,
      this.isPassword = false,
      this.maxLines = 1,
      this.textInputAction,
      this.padding,
      this.height,
      this.textAlign,
      this.isDescription = false});

  @override
  ConsumerState<PreluraAuthTextField> createState() =>
      _VWidgetsLoginTextFieldState();
}

class _VWidgetsLoginTextFieldState extends ConsumerState<PreluraAuthTextField> {
  FocusNode? focusNodeZZZ;
  String? errorMessage;

  late final controller = widget.controller ?? TextEditingController();

  late bool obscureText = widget.isPassword;

  final ProfanityFilter _filter = ProfanityFilter();

  @override
  void initState() {
    if (widget.focusNode == null) {
      focusNodeZZZ = FocusNode();
      focusNodeZZZ?.addListener(addListenerToFocusNode);
    } else {
      widget.focusNode?.addListener(addListenerToFocusNodeWidget);
    }
    super.initState();
  }

  void addListenerToFocusNode() async {
    setState(() {});
  }

  void addListenerToFocusNodeWidget() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool showGradient =
        widget.focusNode?.hasFocus ?? focusNodeZZZ?.hasFocus ?? false;
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        constraints: BoxConstraints(
          minHeight: widget.minLines != null
              ? widget.minLines! * 20.0
              : widget.height ?? 50.0,
          maxHeight:
              widget.minLines != null ? double.infinity : widget.height ?? 50.0,
        ),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            // height: maxLength != null ? 6.h : 6.h,
            width: widget.minWidth ?? 100.0.w,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: TextFormField(
              textInputAction: widget.textInputAction,
              autocorrect: false,
              textAlign: widget.textAlign ?? TextAlign.start,
              enableSuggestions: false,
              minLines: widget.minLines ?? 1,
              controller: widget.controller,
              maxLength: widget.maxLength,
              maxLines: widget.maxLines,
              onSaved: widget.onSaved,
              enabled: widget.enabled,
              cursorHeight: 15,
              textCapitalization:
                  widget.textCapitalization ?? TextCapitalization.none,

              focusNode: widget.focusNode ?? focusNodeZZZ,
              onChanged: (text) {
                if (_filter.hasProfanity(text)) {
                  context.alert('Please avoid using offensive language!');

                  // Remove profanity automatically
                  setState(() {
                    controller.text = _filter.censor(text);
                    controller.selection = TextSelection.fromPosition(
                      TextPosition(offset: controller.text.length),
                    );
                  });
                }
                if (widget.onChanged != null) widget.onChanged!(text);
              },
              cursorColor: Theme.of(context).primaryColor,
              keyboardType: widget.keyboardType,
              obscureText: obscureText,
              obscuringCharacter: '*',
              inputFormatters: widget.isDescription
                  ? []
                  : [
                      widget.formatter ??
                          FilteringTextInputFormatter.singleLineFormatter
                    ],
              // onFieldSubmitted: (value) {
              //   if (widget.textInputAction != TextInputAction.newline) {
              //     widget.focusNode?.unfocus();
              //     focusNodeZZZ?.unfocus();
              //   }
              // },
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
              // validator: (val) {
              //   if (widget.validator == null) return;
              //   if (val == null || val.isEmpty) {
              //     // errorMessage = 'Enter text';
              //   } else {
              //     errorMessage = widget.validator != null ? widget.validator!(val) : 'Enter text';
              //   }

              //   WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
              //     setState(() {});
              //   });
              //   return null;
              // },
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                  ),
              readOnly: widget.shouldReadOnly,
              decoration: UIConstants.instance
                  .inputDecoration(
                      labelText: widget.label,
                      labelStyle: widget.labelStyle,
                      context,
                      hasFocus: widget.focusNode?.hasFocus ??
                          focusNodeZZZ?.hasFocus ??
                          false,
                      hintText: widget.hintText,
                      suffixIcon: widget.suffixIcon,
                      contentPadding: widget.padding)
                  .copyWith(
                    focusedBorder: showGradient
                        ? OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: PreluraColors.primaryColor, width: 1.25),
                          )
                        : null,
                    suffixIcon: !widget.isPassword
                        ? widget.suffixIcon
                        : IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () =>
                                setState(() => obscureText = !obscureText),
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_rounded,
                            ),
                          ),
                  ),
            ),
          ),
        ),
      ),
      if (errorMessage != null && errorMessage!.isNotEmpty)
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "$errorMessage",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        )
    ]);
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: capitalize(newValue.text),
      selection: newValue.selection,
    );
  }
}

String capitalize(String value) {
  if (value.trim().isEmpty) return "";
  return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
}
