import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/model.dart';

// A provider to manage the followers list
final followersProvider =
    StateNotifierProvider<FollowersNotifier, List<Follower>>((ref) {
  return FollowersNotifier();
});

class FollowersNotifier extends StateNotifier<List<Follower>> {
  FollowersNotifier()
      : super([
          Follower(
              username: 'victoriablount',
              profilePicture: '',
              followersCount: 11),
          Follower(
              username: 'raaaaa300', profilePicture: '', followersCount: 6),
          Follower(
              username: 'skyebelle', profilePicture: '', followersCount: 8),
          Follower(
              username: 'hanjane2022', profilePicture: '', followersCount: 160),
          Follower(
              username: 'mariloujasmin',
              profilePicture: '',
              followersCount: 320),
          Follower(
              username: 'emi1y.dc', profilePicture: '', followersCount: 79),
        ]);

  void toggleFollow(String username) {
    state = state.map((follower) {
      if (follower.username == username) {
        return Follower(
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
