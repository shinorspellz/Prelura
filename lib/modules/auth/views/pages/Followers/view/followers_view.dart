import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import '../provider/follower_provider.dart';
import '../widget/follower_tile.dart';

@RoutePage()
class FollowersScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followers = ref.watch(followersProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appbarTitle: "Followers",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => AutoRouter.of(context).popForced(),
        ),
      ),
      body: ListView.builder(
        itemCount: followers.length,
        itemBuilder: (context, index) {
          final follower = followers[index];
          return FollowerTile(follower: follower);
        },
      ),
    );
  }
}
