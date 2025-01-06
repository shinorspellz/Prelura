import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/model.dart';

// A provider to manage the followers list
final followingProvider =
    StateNotifierProvider<FollowingNotifier, List<Following>>((ref) {
  return FollowingNotifier();
});

class FollowingNotifier extends StateNotifier<List<Following>> {
  FollowingNotifier()
      : super([
          Following(
              username: 'victoriablount',
              profilePicture: '',
              followersCount: 11),
          Following(
              username: 'raaaaa300', profilePicture: '', followersCount: 6),
          Following(
              username: 'skyebelle', profilePicture: '', followersCount: 8),
          Following(
              username: 'hanjane2022', profilePicture: '', followersCount: 160),
          Following(
              username: 'mariloujasmin',
              profilePicture: '',
              followersCount: 320),
          Following(
              username: 'emi1y.dc', profilePicture: '', followersCount: 79),
        ]);

  void toggleFollow(String username) {
    state = state.map((follower) {
      if (follower.username == username) {
        return Following(
          username: follower.username,
          profilePicture: follower.profilePicture,
          followersCount: follower.followersCount,
          isFollowing: !follower.isFollowing,
        );
      }
      return follower;
    }).toList();
  }
}
