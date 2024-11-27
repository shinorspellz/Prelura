import 'package:flutter/material.dart';

class PreluraCheckBox extends StatelessWidget {
  final bool isChecked; // Current state of the checkbox
  final ValueChanged<bool> onChanged; // Callback when the checkbox is toggled
  final double size; // Size of the checkbox
  final Color activeColor; // Color when checked
  final Color inactiveColor;
  final BorderRadius borderRadius; // Border radius for rounded corners
  final Color? colorName;
  final String title;

  const PreluraCheckBox(
      {Key? key,
      required this.isChecked,
      required this.onChanged,
      this.size = 20.0,
      this.activeColor = Colors.blue,
      this.inactiveColor = Colors.grey,
      this.borderRadius = BorderRadius.zero,
      required this.title,
      this.colorName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isChecked), // Toggle the state when tapped
      child: Container(
        padding:
            const EdgeInsets.only(top: 16.0, bottom: 16, left: 16, right: 26),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (colorName != null) ...[
                  CircleAvatar(
                    backgroundColor: colorName,
                    radius: 12,
                  ),
                  SizedBox(
                    width: 36,
                  ),
                ],
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                color: isChecked ? activeColor : Colors.transparent,
                border: Border.all(
                  color: isChecked ? activeColor : inactiveColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: isChecked
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: size * 0.6,
                    )
                  : null, // Show icon only if checked
            ),
          ],
        ),
      ),
    );
  }
}
