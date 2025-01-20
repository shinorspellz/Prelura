import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../res/colors.dart';
import '../../res/utils.dart';
import 'auth_text_field.dart';

class PriceFieldWidget extends ConsumerWidget {
  const PriceFieldWidget(
      {super.key,
      required this.textController,
      this.width,
      this.label,
      this.onSaved,
      this.onChanged});
  final TextEditingController textController;
  final double? width;
  final String? label;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15.5),
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(width: 1, color: PreluraColors.primaryColor)),
          child: PreluraAuthTextField(
            hintText: label ?? "Price",
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            controller: textController,
            formatter: [
              DecimalTextInputFormatter(decimalRange: 2),
              FilteringTextInputFormatter.digitsOnly,
              MaxValueTextInputFormatter(99999),
            ],
            onChanged: onChanged,
            onSaved: onSaved,
            minWidth: width,
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
            showPrimaryBorder: true,
            showBorder: false,
          ),
        ),
      ],
    );
  }
}
