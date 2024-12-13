import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/provider/tab_controller.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_card.dart';
import 'package:prelura_app/modules/views/widgets/rating.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../res/colors.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_button.dart';

class UserWardrobe extends ConsumerStatefulWidget {
  UserWardrobe({super.key, this.username});
  final String? username;

  @override
  _UserWardrobeScreenState createState() => _UserWardrobeScreenState();
}

class _UserWardrobeScreenState extends ConsumerState<UserWardrobe> {
  final RefreshController _refreshController = RefreshController();

  Future<void> _onRefresh() async {
    try {
      if (widget.username != null) {
        await ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
      } else {
        final user = await ref.refresh(userProvider).valueOrNull;
        await ref.refresh(userProduct(user?.username).future);
      } // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      if (widget.username != null) {
        await ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
      } else {
        final user = await ref.refresh(userProvider).valueOrNull;
        await ref.refresh(userProduct(user?.username).future);
      } //
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = ref
        .watch((widget.username != null
            ? otherUserProfile(widget.username!)
            : userProvider))
        .valueOrNull;
    bool isCurrentUser = widget.username == null;
    print('location name is ${user?.location?.locationName}');
    final followers = ref
        .read(followingProvider(FollowerQuery(query: "", latestFirst: false)));
    final following = ref.read(followingProvider(FollowerQuery()));
    print({following.value?.length, followers.valueOrNull?.length});

    return SmartRefresher(
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      enablePullDown: true,
      enablePullUp: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (widget.username != null)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ProfileCardWidget(
                  user: user,
                ),
              )
            else
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ProfileCardWidget(),
              ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 16,
                            ),
                            const SizedBox(width: 8),
                            Text(
                                user?.location?.locationName ??
                                    "Exeter, United Kingdom",
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.wifi,
                              size: 14,
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                context.router.push(const FollowersRoute());
                              },
                              child: Text.rich(TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.router
                                          .push(const FollowersRoute());
                                    },
                                  text: "3",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.color,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: " followers,",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: PreluraColors.activeColor,
                                          ),
                                    ),
                                  ])),
                            ),
                            const SizedBox(width: 6),
                            GestureDetector(
                              onTap: () {
                                context.router.push(const FollowingRoute());
                              },
                              child: Text.rich(TextSpan(
                                  text: "3",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.color,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: " following",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: PreluraColors.activeColor,
                                          ),
                                    ),
                                  ])),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.delivery_dining_outlined,
                              size: 16,
                            ),
                            const SizedBox(width: 8),
                            Text("Usually ships within 1 day",
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Ratings(),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "90 ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            InkWell(
                              onTap: () {
                                print("here");
                                ref.read(tabControllerProvider).setTabIndex(1);
                                // context.router.replace(ProfileDetailsRoute());
                              },
                              child: Text(
                                "reviews",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: PreluraColors.activeColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Social and Additional Info Section

                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            onTap: () {
                              if (isCurrentUser) {
                                context.pushRoute(SellItemRoute());
                              }
                            },
                            text: isCurrentUser ? "Upload" : "Message",
                            textColor: PreluraColors.white,
                            bgColor: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: AppButton(
                            onTap: () async {
                              if (!isCurrentUser) {
                                print("running");
                                print(user!.id);
                                final result = await ref.refresh(
                                    followUserProvider(user.id).future);
                                print("result is ${result}");
                                if (result) {
                                  context.alert("Following ${user.username}");
                                }
                              }
                            },
                            text: isCurrentUser ? "Share" : "Follow",
                            textColor: PreluraColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ref.watch(userProduct(user?.username)).when(
                          skipLoadingOnRefresh: false,
                          data: (products) => DisplaySection(
                            products: products,
                          ),
                          error: (e, _) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(e.toString()),
                                TextButton.icon(
                                  onPressed: () {
                                    // log(e.toString(), stackTrace: _);
                                    ref.invalidate(userProduct);
                                  },
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                          loading: () => GridShimmer(),
                        ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
