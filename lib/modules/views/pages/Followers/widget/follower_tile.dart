import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Following/provider/follower_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import '../../../../../res/colors.dart';
import '../../Following/model/model.dart';
import '../model/model.dart';
import '../provider/follower_provider.dart';

class FollowerTile extends ConsumerWidget {
  final dynamic follower;

  const FollowerTile({super.key, required this.follower});

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
            backgroundImage: follower.profilePicture.isNotEmpty ? NetworkImage(follower.profilePicture) : null,
            child: follower.profilePicture.isEmpty ? Text(follower.username[0].toUpperCase()) : null,
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
                  '${follower.followersCount} followers',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          AppButton(
            width: isFollowerModel
                ? follower.isFollowing
                    ? 85
                    : 70
                : follower.isFollowing
                    ? 105
                    : 85,
            onTap: () {
              if (isFollowerModel) {
                ref.read(followersProvider.notifier).toggleFollow(follower.username);
              } else {
                ref.read(followingProvider.notifier).toggleFollow(follower.username);
              }
            },
            bgColor: follower.isFollowing ? Theme.of(context).scaffoldBackgroundColor : null,
            text: isFollowerModel
                ? follower.isFollowing
                    ? 'Following'
                    : 'Follow'
                : follower.isFollowing
                    ? "Connected"
                    : "Connect",
          ),
        ],
      ),
    );
  }
}
