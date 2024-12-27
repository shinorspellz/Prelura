import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';

class PreluraAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PreluraAppBar({
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
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        AppBar(
          centerTitle: centerTitle ?? true,
          automaticallyImplyLeading: false,
          leading: leadingIcon,
          leadingWidth: leadingWidth,
          elevation: elevation ?? 0,
          shadowColor: Colors.white,
          toolbarHeight: appBarHeight ?? 56,
          backgroundColor:
              backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
          title: titleWidget ??
              Text(
                appbarTitle!,
                style: style ??
                    Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w600),
              ),
          actions: [...?trailingIcon],
          shape: Border(
            bottom: BorderSide(color: Theme.of(context).dividerColor, width: 1),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}
