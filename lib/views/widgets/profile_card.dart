import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:prelura_app/views/widgets/show_animated_dialog.dart';
import 'package:share_plus/share_plus.dart';

import '../../res/colors.dart';
import '../../res/images.dart';
import '../../res/render_svg.dart';
import 'rating.dart';

class ProfileCardWidget extends ConsumerWidget {
  const ProfileCardWidget({
    super.key,
    this.user,
    this.fontWeight,
    this.height,
    this.width,
    this.onTap,
  });
  final UserModel? user;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  final Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(userProvider).valueOrNull;
    return GestureDetector(
      onTap: () {
        if (user?.username == currentUser?.username) {
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
      child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ProfilePictureWidget(
                      height: height ?? 55,
                      width: width ?? 55,
                      profilePicture: user != null
                          ? user?.profilePictureUrl
                          : ref
                              .watch(userProvider)
                              .valueOrNull
                              ?.profilePictureUrl,
                      username: user != null
                          ? user?.username ?? '--'
                          : ref.watch(userProvider).valueOrNull?.username ??
                              '--',
                      updating: user != null
                          ? false
                          : ref.watch(userNotfierProvider).isLoading,
                      onTap: onTap),
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
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user != null
                          ? user?.username ?? '--'
                          : ref.watch(userProvider).valueOrNull?.username ??
                              '--',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium?.color),
                    ),
                    3.verticalSpacing,
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
                    3.verticalSpacing,
                    Text(user?.location?.locationName ?? "",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: fontWeight,
                            )),
                  ],
                ),
              ),
              if (context.router.current.name == UserProfileDetailsRoute.name ||
                  context.router.current.name == ProfileDetailsRoute.name) ...[
                24.horizontalSpacing,
                if (user?.isFollowing != null) ...[
                  if (user?.isFollowing == true) ...[
                    ref.watch(unFollowUserProvider).when(
                        data: (data) => GestureDetector(
                            onTap: () async {
                              HapticFeedback.lightImpact();
                              final result = await ref
                                  .read(unFollowUserProvider.notifier)
                                  .unFollowUser(user!.id);

                              if (result) {
                                context.alert("Unfollowed ${user?.username}");
                                ref.invalidate(
                                    otherUserProfile(user?.username ?? ""));
                                ref.invalidate(userProvider);
                                final loggedInUser =
                                    await ref.read(userProvider).valueOrNull;
                                if (loggedInUser?.username != null) {
                                  ref.invalidate(followingTotalProvider(
                                      loggedInUser?.username ?? ""));
                                  ref.invalidate(followersTotalProvider(
                                      loggedInUser?.username ?? ""));
                                }
                              }
                              log("following");
                              return;
                            },
                            child: Icon(Icons.person_sharp,
                                color: PreluraColors.primaryColor)),
                        error: (error, _) => SizedBox.shrink(),
                        loading: () => LoadingWidget())
                  ],
                  if (user?.isFollowing == false) ...[
                    ref.watch(followUserProvider).when(
                        data: (data) => GestureDetector(
                            onTap: () async {
                              HapticFeedback.lightImpact();
                              final result = await ref
                                  .read(followUserProvider.notifier)
                                  .followUser(user!.id);

                              if (result) {
                                context.alert("Following ${user?.username}");
                                ref.invalidate(
                                    otherUserProfile(user?.username ?? ""));
                                ref.invalidate(userProvider);
                              }
                              log("following");
                              return;
                            },
                            child: Icon(Icons.person_add_alt_sharp)),
                        error: (error, _) => SizedBox.shrink(),
                        loading: () => LoadingWidget())
                  ],
                  10.horizontalSpacing,
                ],
                GestureDetector(
                    onTap: () async {
                      HapticFeedback.lightImpact();

                      Share.shareUri(Uri.parse(
                          'https://www.prelura.com/profile/user/${user?.username}'));
                    },
                    child: RenderSvg(
                        svgPath: PreluraIcons.forward_icon_svg,
                        svgHeight: 20,
                        svgWidth: 20,
                        color: PreluraColors.primaryColor))
              ]
            ],
          )),
    );
  }
}
