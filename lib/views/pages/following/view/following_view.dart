import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../widgets/SearchWidget.dart';
import '../../../widgets/empty_screen_placeholder.dart';
import '../../../widgets/error_placeholder.dart';
import '../../followers/widget/follower_tile.dart';

final followingqueryProvider = StateProvider<FollowerQuery>(
  (ref) => FollowerQuery(
    query: "",
    latestFirst: false,
    username: "", // Default value, can be updated per widget instance
  ),
);

@RoutePage()
class FollowingScreen extends ConsumerStatefulWidget {
  const FollowingScreen({super.key, required this.username});
  final String username;

  @override
  ConsumerState<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends ConsumerState<FollowingScreen> {
  final TextEditingController _searchController = TextEditingController();
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(followingqueryProvider.notifier).state = FollowerQuery(
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
      ref.read(followingqueryProvider.notifier).state = FollowerQuery(
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
      ref.invalidate(followingProvider(
          ref.read(followingqueryProvider))); // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      ref.invalidate(followingProvider(
          ref.read(followingqueryProvider))); // Re-trigger the provider

      // await ref.read(productRepo).fetchMoreFavouriteProducts();
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final queryParams = ref.watch(followingqueryProvider);

    // Watch the followersProvider with current query parameters
    final following = ref.watch(followingProvider(queryParams));
    final followingTotalNumber =
        ref.watch(followingTotalProvider(queryParams.username));
    log(followingTotalNumber.valueOrNull.toString());

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appbarTitle: "Following",
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
        header: null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              if ((followingTotalNumber.valueOrNull ?? 0) > 0)
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
              following.when(
                data: (followersList) {
                  if (followersList.isEmpty) {
                    return EmptyScreenPlaceholder(text: "No followings");
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: followersList.length,
                      itemBuilder: (context, index) {
                        final user = followersList[index];
                        return FollowerTile(
                          follower: user,
                        );
                      },
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) {
                  return ErrorPlaceholder(
                      error: "An error occured",
                      onTap: () {
                        ref.refresh(followingProvider(queryParams).future);
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
