import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
import 'package:prelura_app/modules/views/pages/Following/provider/follower_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import '../../../../../res/colors.dart';
import '../../Following/model/model.dart';
import '../model/model.dart';
import '../provider/follower_provider.dart';

class FollowerTile extends ConsumerWidget {
  final UserModel follower;
  final bool isFollowing;

  const FollowerTile({super.key, required this.follower, required this.isFollowing});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFollowingModel = follower is Following;
    final isFollowerModel = follower is Follower;
    return Container(
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
            backgroundImage: follower.profilePictureUrl!.isNotEmpty ? NetworkImage(follower.profilePictureUrl!) : null,
            child: follower.profilePictureUrl!.isEmpty ? Text(follower.username[0].toUpperCase()) : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  follower.username,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  '${follower} followers',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          AppButton(
            width: isFollowing
                    ? 85
                    : 70
              ,
            onTap: () {
              // if (isFollowerModel) {
              //   ref.read(followersProvider.notifier).toggleFollow(follower.username);
              // } else {
              //   ref.read(followingProvider.notifier).toggleFollow(follower.username);
              // }
            },
            bgColor: isFollowing ? Theme.of(context).scaffoldBackgroundColor : null,
            text: isFollowing
                    ? 'Following'
                    : 'Follow',
          ),
        ],
      ),
    );
  }
}
