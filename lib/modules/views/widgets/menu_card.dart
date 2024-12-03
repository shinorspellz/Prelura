import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res/images.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.title,
    this.borderbottom = true,
    this.icon,
    this.widget,
    required this.onTap,
    this.subtitle,
    this.subtitleColor,
    this.profilePic = false,
    this.rightArrow = true,
    this.additionalText,
    this.textColor,
    this.iconColor,
  });
  final String title;
  final String? subtitle;
  final String? additionalText;
  final Icon? icon;
  final Function onTap;
  final bool profilePic;
  final Widget? widget;
  final bool rightArrow;
  final bool borderbottom;
  final Color? subtitleColor;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: borderbottom ? Theme.of(context).dividerColor : Colors.transparent, // Use the theme's divider color
              width: 1.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (profilePic) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25), // Circular border radius (since height and width are 60)
                        child: Image.asset(
                          PreluraIcons.Image,
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        ),
                      )
                    ] else if (icon != null) ...[
                      icon!,
                      const SizedBox(width: 10),
                    ],
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: textColor ?? Theme.of(context).textTheme.bodyMedium?.color),
                        ),
                        widget ?? const SizedBox.shrink(),
                        if (additionalText != null)
                          Text(
                            additionalText ?? "",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      subtitle ?? "",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: subtitleColor ?? Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    if (rightArrow)
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                        color: iconColor ?? Theme.of(context).iconTheme.color,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}