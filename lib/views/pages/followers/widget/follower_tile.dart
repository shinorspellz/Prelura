import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/rating.dart';

import '../../../../controller/user/user_controller.dart';
import '../../../../model/user/user_model.dart';
import '../../../../res/colors.dart';
import '../../../../res/utils.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/profile_picture.dart';

class FollowerTile extends ConsumerStatefulWidget {
  final UserModel follower;
  final String username;
  final FollowerQuery queryParams;

  const FollowerTile({
    super.key,
    required this.follower,
    required this.username,
    required this.queryParams,
  });

  @override
  _FollowerTileState createState() => _FollowerTileState();
}

class _FollowerTileState extends ConsumerState<FollowerTile> {
  bool isLoading = false;

  Future<void> _toggleFollow() async {
    if (isLoading) return;
    setState(() => isLoading = true);
    HapticFeedback.lightImpact();
    try {
      final username = widget.follower.username;
      log("username $username");
      if (widget.follower.isFollowing ?? false) {
        final notifier = ref.read(unFollowUserProvider.notifier);
        final result = await notifier.unFollowUser(widget.follower.id);
        if (result) {
          context.alert("Unfollowed $username");
        }
      } else {
        final result = await ref
            .read(followUserProvider.notifier)
            .followUser(widget.follower.id);
        if (result) {
          context.alert("following $username");
        }
      }
    } catch (e, stackTrace) {
      log("Failed to toggle follow state: $e");
      log("StackTrace: $stackTrace");
    } finally {
      await ref.refresh(followingProvider(widget.queryParams).future);
      ref.invalidate(followersProvider(widget.queryParams));
      ref.refresh(followingTotalProvider(widget.username).future);
      ref.invalidate(
          followersProvider(FollowerQuery(username: widget.username)));
      ref.invalidate(followersTotalProvider(widget.username));
      ref.invalidate(userProvider);
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isFollowing = widget.follower.isFollowing ?? false;
    final isCurrentUser = ref.watch(userProvider).valueOrNull?.username ==
        widget.follower.username;

    return GestureDetector(
      onTap: () {
        if (isCurrentUser) {
          // context.router.push(ProfileDetailsRoute());
        } else {
          context.router
              .push(ProfileDetailsRoute(username: widget.follower.username));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            ProfilePictureWidget(
              profilePicture: widget.follower.profilePictureUrl,
              username: widget.follower.username,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.follower.username,
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
                      const SizedBox(width: 4),
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
            12.horizontalSpacing,
            AppButton(
              fontSize: getDefaultSize(),
              width: isFollowing ? 85 : 70,
              loading: isLoading,
              onTap: isLoading || isCurrentUser ? null : _toggleFollow,
              textColor: isFollowing
                  ? context.isDarkMode
                      ? PreluraColors.white
                      : PreluraColors.primaryColor
                  : PreluraColors.white,
              bgColor: isFollowing
                  ? Theme.of(context).scaffoldBackgroundColor
                  : null,
              text: isLoading ? "..." : (isFollowing ? 'Following' : 'Follow'),
              isDisabled: isLoading || isCurrentUser,
            ),
          ],
        ),
      ),
    );
  }
}
