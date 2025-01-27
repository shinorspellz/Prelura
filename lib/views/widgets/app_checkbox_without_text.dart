import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../res/colors.dart';
import '../../res/utils.dart';

class PreluraCheckBoxWithoutText extends StatelessWidget {
  final bool isChecked; // Current state of the checkbox
  final ValueChanged<bool> onChanged; // Callback when the checkbox is toggled
  final double size; // Size of the checkbox
  final Color activeColor; // Color when checked
  final Color inactiveColor;
  final BorderRadius borderRadius; // Border radius for rounded corners
  final Color? colorName;
  final String title;
  final String? subtitle;
  final Widget? titleWidget;
  final Icon? icon;
  final TextStyle? style;
  final Color? sideTextColor;
  final Color? subTitleColor;
  final String? sideText;

  const PreluraCheckBoxWithoutText(
      {super.key,
      required this.isChecked,
      required this.onChanged,
      this.size = 20.0,
      this.activeColor = PreluraColors.primaryColor,
      this.inactiveColor = Colors.grey,
      this.borderRadius = BorderRadius.zero,
      required this.title,
      this.subtitle,
      this.icon,
      this.colorName,
      this.titleWidget,
      this.style,
      this.sideTextColor,
      this.sideText,
      this.subTitleColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isChecked), // Toggle the state when tapped
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: isChecked ? activeColor : Colors.transparent,
          border: Border.all(
            color: isChecked ? activeColor : inactiveColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: size * 0.6,
              )
            : null, // Show icon only if checked
      ),
    );
  }
}
