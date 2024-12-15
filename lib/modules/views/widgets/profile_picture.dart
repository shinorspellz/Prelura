import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget(
      {super.key,
      this.profilePicture,
      this.username,
      this.updating = false,
      this.height,
      this.width});

  final String? profilePicture;
  final String? username;
  final bool updating;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (profilePicture == null) {
      return CircleAvatar(
        radius: height != null ? height! / 2 : 25,
        child: updating
            ? SizedBox(
                height: height != null ? height! / 2 : 25,
                width: width != null ? height! / 2 : 25,
                child: LoadingWidget(),
              )
            : Text(username?.split('').first.toUpperCase() ?? '--'),
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
