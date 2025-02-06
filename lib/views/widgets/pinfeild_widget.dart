import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';

class PinfeildWidget extends StatelessWidget {
  const PinfeildWidget({super.key, this.controller, this.length = 6});

  /// Text controller for pin feilds
  final TextEditingController? controller;

  ///Number of pin feilds required
  final int length;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: context.textTheme.headlineLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: context.theme.primaryColor),
      ),
    );

    return SizedBox(
      height: 68,
      child: Pinput(
        controller: controller,
        textCapitalization: TextCapitalization.characters,
        // focusNode: focusNode,
        keyboardType: TextInputType.text,
        defaultPinTheme: defaultPinTheme,
        onCompleted: (pin) {
          // setState(() => showError = pin != '5555');
        },
        length: length,
        focusedPinTheme: defaultPinTheme.copyWith(
          height: 68,
          width: 64,
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: PreluraColors.activeColor),
          ),
        ),
      ),
    );
  }
}
