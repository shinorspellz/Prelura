import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../controller/user/user_controller.dart';
import '../../core/router/router.gr.dart';
import '../../model/user/user_model.dart';
import '../../res/colors.dart';
import '../../res/images.dart';
import '../../res/render_svg.dart';
import '../../res/utils.dart';
import 'profile_picture.dart';
import 'rating.dart';

class UserCard extends ConsumerWidget {
  const UserCard({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCurrentUser =
        ref.watch(userProvider).valueOrNull?.username == user.username;
    return GestureDetector(
      onTap: () {
        if (isCurrentUser) {
          final tabRouter = AutoTabsRouter.of(context);
          tabRouter.setActiveIndex(3);
          // context.router
          //     .push(ProfileNavigationRoute());
        } else {
          if (user?.username != null) {
            context.router.push(ProfileDetailsRoute(username: user!.username));
          }
        }
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            )),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ProfilePictureWidget(
                  profilePicture: user.profilePictureUrl,
                  username: user.username,
                ),
                Positioned(
                    bottom: -2,
                    right: 0,
                    child: RenderSvgWithoutColor(
                      svgPath: PreluraIcons.trusted_svg,
                      svgHeight: 18,
                      svgWidth: 18,
                    ))
              ],
            ),
            // CircleAvatar(
            //   backgroundImage: follower.profilePictureUrl != null ? NetworkImage(follower.profilePictureUrl!) : null,
            //   child: follower.profilePictureUrl == null
            //       ? Text(
            //           follower.username[0].toUpperCase(),
            //           style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black),
            //         )
            //       : null,
            // ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.username,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getDefaultSize(),
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Ratings(),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "(300)",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: PreluraColors.activeColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
