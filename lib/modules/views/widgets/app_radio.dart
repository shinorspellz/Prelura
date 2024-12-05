import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../res/colors.dart';

class PreluraRadio extends StatelessWidget {
  final dynamic groupValue; // The value of the selected radio button
  final dynamic value; // The unique value for this radio button
  final ValueChanged<dynamic> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  final double borderWidth;
  final Color borderColor;
  final String title;
  final String? subtitle;

  // Constructor
  const PreluraRadio({
    super.key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.activeColor = PreluraColors.activeColor,
    this.inactiveColor = Colors.grey,
    this.size = 20.0,
    this.borderWidth = 2.0,
    this.borderColor = Colors.grey,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // Determine if the radio is selected
    bool isSelected = groupValue == value;
    print(isSelected);

    return GestureDetector(
      onTap: () {
        onChanged(value); // Update the selected value
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              // Use the theme's divider color
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis, // Handle overflow
                    maxLines: 1, // Limit the number of lines
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      subtitle!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                      maxLines: 3, // Limit the number of lines for the subtitle
                    ),
                  ]
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? activeColor : borderColor,
                  width: borderWidth,
                ),
              ),
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: isSelected ? size * 0.6 : size * 0.3, // Circle shrink/grow effect
                  height: isSelected ? size * 0.6 : size * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? activeColor : Colors.transparent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
