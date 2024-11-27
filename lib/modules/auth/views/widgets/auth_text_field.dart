import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/ui_constants.dart';

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

  const PreluraAuthTextField({
    super.key,
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
  });

  @override
  ConsumerState<PreluraAuthTextField> createState() =>
      _VWidgetsLoginTextFieldState();
}

class _VWidgetsLoginTextFieldState extends ConsumerState<PreluraAuthTextField> {
  FocusNode? focusNodeZZZ;
  String? errorMessage;

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
        child: Container(
          // height: maxLength != null ? 6.h : 6.h,
          width: widget.minWidth ?? 100.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            minLines: widget.minLines ?? 1,
            controller: widget.controller,
            maxLength: widget.maxLength,
            onSaved: widget.onSaved,
            enabled: widget.enabled,
            cursorHeight: 15,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
            onTap: widget.onTap,
            focusNode: widget.focusNode ?? focusNodeZZZ,
            onChanged: (text) {
              if (widget.onChanged != null) widget.onChanged!(text);
            },
            cursorColor: Theme.of(context).primaryColor,
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            obscuringCharacter: '*',
            inputFormatters: [
              widget.formatter ??
                  FilteringTextInputFormatter.singleLineFormatter
            ],
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (val) {
              if (widget.validator == null) return;
              if (val == null || val.isEmpty) {
                // errorMessage = 'Enter text';
              } else {
                errorMessage = widget.validator != null
                    ? widget.validator!(val)
                    : 'Enter text';
              }

              WidgetsFlutterBinding.ensureInitialized()
                  .addPostFrameCallback((_) {
                setState(() {});
              });
              return null;
            },
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Theme.of(context).primaryColor.withOpacity(1),
                ),
            readOnly: widget.shouldReadOnly,
            decoration: UIConstants.instance
                .inputDecoration(
                  context,
                  hintText: widget.hintText,
                  suffixIcon: widget.suffixIcon,
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                )
                .copyWith(
                  focusedBorder: showGradient
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        )
                      : null,
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
