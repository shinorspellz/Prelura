import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../widgets/empty_screen_placeholder.dart';
import '../../../widgets/loading_widget.dart';
import '../widget/follower_tile.dart';

final followersqueryProvider = StateProvider<FollowerQuery>(
  (ref) => FollowerQuery(
    query: "",
    latestFirst: false,
    username: "", // Default value, can be updated per widget instance
  ),
);

@RoutePage()
class FollowersScreen extends ConsumerStatefulWidget {
  const FollowersScreen(this.username, {super.key});
  final String username;

  @override
  ConsumerState<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends ConsumerState<FollowersScreen> {
  final TextEditingController _searchController = TextEditingController();
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(followersqueryProvider.notifier).state = FollowerQuery(
        query: "",
        latestFirst: false,
        username: widget.username,
      );
    });
  }

  Timer? _debounce;

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // Update the query parameters in the StateProvider
      ref.read(followersqueryProvider.notifier).state = FollowerQuery(
          query: _searchController.text,
          latestFirst: false,
          username: widget.username);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    try {
      ref.refresh(followersProvider(
          ref.read(followersqueryProvider))); // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      ref.refresh(followersProvider(
          ref.read(followersqueryProvider))); // Re-trigger the provider

      // await ref.read(productRepo).fetchMoreFavouriteProducts();
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final queryParams = ref.watch(followersqueryProvider);

    // Watch the followersProvider with current query parameters
    final followers = ref.watch(followersProvider(queryParams));
    final followersTotalNumber =
        ref.watch(followersTotalProvider(widget.username));

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
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if ((followersTotalNumber.valueOrNull ?? 0) > 0)
                Searchwidget(
                  controller: _searchController,
                  obscureText: false,
                  shouldReadOnly: false,
                  enabled: true,
                  showInputBorder: true,
                  autofocus: false,
                  cancelButton: true,
                  hintText: "search for members",
                ),
              const SizedBox(height: 16),
              followers.when(
                data: (followersList) {
                  if (followersList.isEmpty) {
                    return Expanded(
                        child: Center(
                            child: const EmptyScreenPlaceholder(
                                text: "No followers.")));
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: followersList.length,
                      itemBuilder: (context, index) {
                        final user = followersList[index];
                        return FollowerTile(
                          follower: user,
                          username: widget.username,
                          queryParams: queryParams,
                        );
                      },
                    ),
                  );
                },
                loading: () =>
                    Expanded(child: const Center(child: LoadingWidget())),
                error: (error, stackTrace) {
                  return Center(child: Text("Error: ${error.toString()}"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
