import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    super.key,
    this.profilePicture,
    this.username,
    this.updating = false,
  });

  final String? profilePicture;
  final String? username;
  final bool updating;

  @override
  Widget build(BuildContext context) {
    if (profilePicture == null) {
      return CircleAvatar(
        radius: 25,
        child: updating
            ? const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 1.8,
                ),
              )
            : Text(username?.split('').first.toUpperCase() ?? '--'),
      );
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: CachedNetworkImageProvider(profilePicture!),
              fit: BoxFit.cover,
              colorFilter: updating ? const ColorFilter.mode(Colors.black45, BlendMode.srcOver) : null,
            ),
          ),
        ),
        if (updating)
          const SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 1.8,
            ),
          )
      ],
    );
  }
}
