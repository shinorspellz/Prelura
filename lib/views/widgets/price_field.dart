import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/res/context_entension.dart';

import '../../res/colors.dart';
import '../../res/ui_constants.dart';
import '../../res/utils.dart';

class PriceFieldWidget extends ConsumerWidget {
  const PriceFieldWidget(
      {super.key,
      required this.textController,
      this.width,
      this.label,
      this.maxLength,
      this.onSaved,
      this.onChanged});
  final TextEditingController textController;
  final double? width;
  final int? maxLength;
  final String? label;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              border: Border(
                  left: BorderSide(
                      width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
                  top: BorderSide(
                      width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
                  bottom: BorderSide(
                      width: 0.5, color: PreluraColors.grey.withOpacity(0.5)))),
          child: Text("£",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: getDefaultSize(size: 16))),
        ),
        Container(
          width: width,
          decoration: BoxDecoration(),
          child: TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              controller: textController,
              maxLength: maxLength,
              cursorColor: Theme.of(context).primaryColor,
              inputFormatters: [
                DecimalTextInputFormatter(decimalRange: 2),
                FilteringTextInputFormatter.digitsOnly,
                MaxValueTextInputFormatter(99999),
              ],
              onChanged: onChanged,
              onSaved: onSaved,
              decoration: UIConstants.instance
                  .inputDecoration(
                    labelText: label ?? "Price",
                    context,
                    hintText: "Price",
                    showBorder: true,
                    showPrimaryBorder: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                  )
                  .copyWith(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: context.isDarkMode
                              ? PreluraColors.white.withOpacity(0.5)
                              : Theme.of(context)
                                  .dividerColor, //Theme.of(context).primaryColor,
                          width: 1.25,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                            color: PreluraColors.primaryColor, width: 1.25),
                      ))),
        ),
      ],
    );
  }
}
