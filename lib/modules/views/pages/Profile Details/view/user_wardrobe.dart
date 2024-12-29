import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/chat/conversations_provider.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/pages/Chat/view/chat_view.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/provider/tab_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/widgets/user_scrollable_list.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_card.dart';
import 'package:prelura_app/modules/views/widgets/rating.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../../model/product/categories/category_model.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_button.dart';
import '../widgets/user_popular_brand.dart';

class UserWardrobe extends ConsumerStatefulWidget {
  const UserWardrobe({super.key, this.username});
  final String? username;

  @override
  _UserWardrobeScreenState createState() => _UserWardrobeScreenState();
}

class _UserWardrobeScreenState extends ConsumerState<UserWardrobe> {
  final RefreshController _refreshController = RefreshController();
  bool isSelected = false;
  String selectedItem = "";
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  Future<void> _onRefresh() async {
    try {
      if (widget.username != null) {
        ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
        await ref.refresh(followersTotalProvider.future);
        await ref.refresh(followingTotalProvider.future);
      } else {
        final user = ref.refresh(userProvider).valueOrNull;
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
        ref.refresh(otherUserProfile(widget.username!));
        await ref.refresh(userProduct(widget.username!).future);
      } else {
        final user = await ref.refresh(userProvider.future);
        await ref.refresh(userProduct(user.username).future);
      } //
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final wordsToRemove = ["electronics", "home", "entertainment", "pet care"];
    final user = ref
        .watch((widget.username != null
            ? otherUserProfile(widget.username!)
            : userProvider))
        .value;
    bool isCurrentUser = widget.username == null;
    final List<CategoryModel> categories;
    categories = ref
        .watch(categoryProvider)
        .value!
        .where((word) => !wordsToRemove.contains(word.name.toLowerCase()))
        .toList();

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
                  if (user?.bio != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            user?.bio ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),

                  // Social and Additional Info Section
                  UserScrollableList(
                    user: user,
                  ),
                  MenuCard(
                      icon: isSelected
                          ? Icon(Icons.arrow_back_ios_rounded,
                              size: 18, color: PreluraColors.primaryColor)
                          : null,
                      title: selectedItem.isNotEmpty
                          ? "Viewing"
                          : widget.username != null
                              ? 'Categories from this seller'
                              : "Categories",
                      sideText: selectedItem.isNotEmpty ? selectedItem : null,
                      sideTextColor: PreluraColors.primaryColor,
                      textColor: PreluraColors.grey,
                      rightArrow: !isSelected,
                      trailingIcon: isSelected
                          ? null
                          : selectedItem.isNotEmpty
                              ? Icon(Icons.cancel_rounded,
                                  color: PreluraColors.grey)
                              : Icon(Icons.arrow_forward_ios_rounded,
                                  color: PreluraColors.grey, size: 18),
                      onTap: () {
                        isSelected = !isSelected;
                        selectedItem = "";
                        setState(() {});
                      }),
                  if (isSelected) ...[
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (_, index) {
                        final cat = categories[index];

                        return MenuCard(
                          title: cat.name,
                          textColor: PreluraColors.grey,
                          trailingIcon: RenderSvg(
                              svgPath: PreluraIcons.arrowDown_svg,
                              svgHeight: 16,
                              svgWidth: 16,
                              color: PreluraColors.grey),
                          onTap: () {
                            selectedItem = cat.name;
                            isSelected = false;
                            setState(() {});
                          },
                        );
                      },
                    )
                  ],
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 6),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.username != null
                                ? "Brands from this seller"
                                : "Top Brands",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: PreluraColors.grey),
                          ),
                          //   RenderSvgWithColor2(
                          //       svgPath: PreluraIcons.search_glass_svg)
                          // ],
                          Icon(Icons.search, color: PreluraColors.primaryColor)
                        ]),
                  ),
                  UserPopularBrand(),

                  // const Divider(),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: AppButton(
                  //           loading: ref.watch(conversationProvider).isLoading,
                  //           onTap: () async {
                  //             HapticFeedback.lightImpact();
                  //             if (isCurrentUser) {
                  //               context.pushRoute(SellItemRoute());
                  //             } else {
                  //               await ref
                  //                   .read(conversationProvider.notifier)
                  //                   .createChat(user!.username);
                  //               ref.read(conversationProvider).whenOrNull(
                  //                   error: (e, _) => context.alert(
                  //                       'Failed to message ${user.username}'),
                  //                   data: (conv) {
                  //                     log('$conv');
                  //                     final currentConv = conv.firstWhere((e) =>
                  //                         e.recipient.username ==
                  //                         user.username);
                  //                     context.pushRoute(
                  //                       ChatRoute(
                  //                         id: currentConv.id,
                  //                         username:
                  //                             currentConv.recipient.username,
                  //                         avatarUrl: currentConv
                  //                             .recipient.profilePictureUrl,
                  //                       ),
                  //                     );
                  //                   });
                  //               // context.pushRoute(ChatScreen(username, message, time, avatarUrl))
                  //             }
                  //           },
                  //           text: isCurrentUser ? "Upload" : "Message",
                  //           textColor: PreluraColors.activeColor,
                  //           bgColor: Theme.of(context).scaffoldBackgroundColor,
                  //         ),
                  //       ),
                  //       const SizedBox(width: 8),
                  //       Expanded(
                  //         child: AppButton(
                  //           onTap: () async {
                  //             HapticFeedback.lightImpact();
                  //             if (isCurrentUser) {
                  //               Share.shareUri(Uri.parse(
                  //                   'https://prelura.com/${user?.username}'));
                  //               return;
                  //             }

                  //             if (!isCurrentUser &&
                  //                 user?.isFollowing! == false) {
                  //               final result = await ref.refresh(
                  //                   followUserProvider(user!.id).future);

                  //               if (result) {
                  //                 context.alert("Following ${user.username}");
                  //                 ref.invalidate(
                  //                     otherUserProfile(widget.username!));
                  //                 ref.invalidate(userProvider);
                  //               }
                  //               log("following");
                  //               return;
                  //             }
                  //             if (!isCurrentUser && user?.isFollowing == true) {
                  //               final notifier =
                  //                   ref.read(unFollowUserProvider.notifier);
                  //               final result =
                  //                   await notifier.unFollowUser(user!.id);
                  //               if (result) {
                  //                 context.alert("Unfollwed ${user.username}");
                  //               }
                  //               ref.invalidate(
                  //                   otherUserProfile(widget.username!));
                  //               ref.invalidate(userProvider);
                  //               log("unfollowing");

                  //               return;
                  //             }
                  //           },
                  //           text: isCurrentUser
                  //               ? "Share"
                  //               : (user != null && user.isFollowing!)
                  //                   ? "Following"
                  //                   : "Follow",
                  //           textColor: PreluraColors.white,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text(
                              "Filter",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: PreluraColors.grey),
                            ),
                            2.horizontalSpacing,
                            // RenderSvg(svgPath: PreluraIcons.fil, svgHeight: 18, svgWidth:18)
                            Icon(Icons.filter_list_sharp,
                                color: PreluraColors.primaryColor, size: 17)
                          ]),
                          Row(children: [
                            Text(
                              "Sort",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: PreluraColors.grey),
                            ),
                            2.horizontalSpacing,
                            RenderSvg(
                                svgPath: PreluraIcons.sort_icon_svg,
                                color: PreluraColors.activeColor,
                                svgHeight: 16,
                                svgWidth: 16)
                          ])
                        ]),
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
                            isInProduct: false,
                          ),
                          error: (e, _) {
                            log("$_");
                            return Center(
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
                            );
                          },
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
