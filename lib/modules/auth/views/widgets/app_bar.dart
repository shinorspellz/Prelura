import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/gap.dart';

class PreluraAppBar extends StatelessWidget implements PreferredSizeWidget {
  PreluraAppBar({
    this.appbarTitle,
    this.centerTitle,
    this.leadingIcon,
    this.titleWidget,
    this.trailingIcon,
    this.backgroundColor,
    this.appBarHeight,
    super.key,
    this.leadingWidth,
    this.style,
    this.elevation,
  });

  final String? appbarTitle;
  final Widget? leadingIcon;
  final List<Widget>? trailingIcon;
  final Color? backgroundColor;
  final double? appBarHeight;
  final double? leadingWidth;
  final TextStyle? style;
  final Widget? titleWidget;
  final double? elevation;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpacing(10),
        AppBar(
          centerTitle: centerTitle ?? true,
          automaticallyImplyLeading: false,
          leading: leadingIcon,
          leadingWidth: leadingWidth,
          elevation: elevation ?? 0,
          toolbarHeight: appBarHeight ?? 45,
          backgroundColor:
              backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
          title: titleWidget ??
              Text(
                appbarTitle!,
                style: style ??
                    Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w600),
              ),
          actions: [...?trailingIcon],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}
