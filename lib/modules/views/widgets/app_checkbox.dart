import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../res/colors.dart';

class PreluraCheckBox extends StatelessWidget {
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
  final String? sideText;

  const PreluraCheckBox({
    super.key,
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
  });

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
                if (icon != null) ...[
                  icon!,
                  SizedBox(
                    width: 16,
                  ),
                ],
                SizedBox(
                  width: 60.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (titleWidget != null) ...[
                        titleWidget!,
                      ] else ...[
                        Row(
                          children: [
                            Text(
                              title,
                              style: style ??
                                  Theme.of(context).textTheme.bodyMedium,
                            ),
                            6.horizontalSpacing,
                            if (sideText != null)
                              Text(
                                sideText ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: sideTextColor ??
                                            Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.color),
                              )
                          ],
                        ),
                      ],
                      if (subtitle != null) ...[
                        const SizedBox(height: 6),
                        Text(
                          subtitle!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w300),
                          overflow: TextOverflow.ellipsis, // Handle overflow
                          maxLines:
                              4, // Limit the number of lines for the subtitle
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
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
