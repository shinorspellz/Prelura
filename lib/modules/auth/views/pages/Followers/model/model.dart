class Follower {
  final String username;
  final String profilePicture;
  final int followersCount;
  bool isFollowing;

  Follower({
    required this.username,
    required this.profilePicture,
    required this.followersCount,
    this.isFollowing = false,
  });
}
