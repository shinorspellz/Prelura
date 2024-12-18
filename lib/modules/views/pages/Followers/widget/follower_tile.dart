import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/res/helper_function.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../res/colors.dart';
import '../../Following/view/following_view.dart';
import '../model/model.dart';
import '../view/followers_view.dart';

final _queryProvider = StateProvider<FollowerQuery>(
    (ref) => FollowerQuery(query: "", latestFirst: false, username: ""));

class FollowerTile extends ConsumerWidget {
  final UserModel follower;

  const FollowerTile({
    super.key,
    required this.follower,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFollowing = follower.isFollowing ?? false;
    print("isFollowing : ${follower.isFollowing}");
    final isCurrentUser =
        ref.watch(userProvider).valueOrNull?.username == follower.username;
    return GestureDetector(
      onTap: () {
        if (isCurrentUser) {
          context.router.push(ProfileDetailsRoute());
        } else {
          context.router.push(ProfileDetailsRoute(username: follower.username));
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
            )),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: follower.profilePictureUrl != null
                  ? NetworkImage(follower.profilePictureUrl!)
                  : null,
              child: follower.profilePictureUrl == null
                  ? Text(
                      follower.username[0].toUpperCase(),
                      style: TextStyle(
                          color:
                              context.isDarkMode ? Colors.white : Colors.black),
                    )
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    follower.fullName ?? follower.username,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${follower.username}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            AppButton(
              width: isFollowing ? 85 : 70,
              onTap: () async {
                HapticFeedback.lightImpact();
                try {
                  if (isFollowing) {
                    final username = follower.username;
                    final notifier =
                        await ref.read(unFollowUserProvider.notifier);
                    final result = await notifier.unFollowUser(follower.id);
                    if (result) {
                      print(username);
                      HelperFunction.context = context;
                      HelperFunction.showToast(
                          message: "Unfollowed ${username}");
                    }
                  } else {
                    await ref.read(followUserProvider(follower.id));
                  }
                } catch (e, stackTrace) {
                  // Revert the toggle if the operation fails

                  print("Failed to toggle follow state: $e");
                  print("Failed to toggle follow state: $stackTrace");
                } finally {
                  // Always refresh the providers
                  print("i am here");
                  ref.invalidate(
                      followingProvider(ref.read(followingqueryProvider)));
                  ref.invalidate(
                      followersProvider(ref.read(followersqueryProvider)));

                  ref.invalidate(userProvider);
                }
              },
              textColor: isFollowing
                  ? context.isDarkMode
                      ? PreluraColors.white
                      : PreluraColors.primaryColor
                  : PreluraColors.white,
              bgColor: isFollowing
                  ? Theme.of(context).scaffoldBackgroundColor
                  : null,
              text: isFollowing ? 'Following' : 'Follow',
              isDisabled: isCurrentUser,
            ),
          ],
        ),
      ),
    );
  }
}
