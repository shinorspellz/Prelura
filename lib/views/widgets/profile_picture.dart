import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget(
      {super.key,
      this.profilePicture,
      this.username,
      this.updating = false,
      this.height,
      this.width,
      this.allowBorder = true,
      this.borderColor});

  final String? profilePicture;
  final String? username;
  final bool updating;
  final double? width;
  final double? height;
  final Color? borderColor;
  final bool allowBorder;

  @override
  Widget build(BuildContext context) {
    if (profilePicture == null || (profilePicture == "null")) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: allowBorder
              ? Border.all(color: borderColor ?? Colors.transparent, width: 2)
              : null,
        ),
        child: CircleAvatar(
          radius: height != null ? height! / 2 : 25,
          backgroundColor: Colors.grey[600],
          child: updating
              ? SizedBox(
                  height: height != null ? height! / 2 : 25,
                  width: width != null ? height! / 2 : 25,
                  child: LoadingWidget(),
                )
              : Text(
                  username?.split('').first.toUpperCase() ?? '--',
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
        ),
      );
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: width ?? 50,
          width: height ?? 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                Border.all(color: borderColor ?? Colors.transparent, width: 2),
            image: DecorationImage(
              image: CachedNetworkImageProvider(profilePicture!),
              fit: BoxFit.cover,
              colorFilter: updating
                  ? const ColorFilter.mode(Colors.black45, BlendMode.srcOver)
                  : null,
            ),
          ),
        ),
        if (updating)
          SizedBox(
            height: height != null ? height! / 2 : 25,
            width: width != null ? width! / 2 : 25,
            child: LoadingWidget(),
          )
      ],
    );
  }
}
