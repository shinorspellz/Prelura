class Following {
  final String username;
  final String profilePicture;
  final int followersCount;
  bool isFollowing;

  Following({
    required this.username,
    required this.profilePicture,
    required this.followersCount,
    this.isFollowing = false,
  });
}
