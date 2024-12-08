import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/provider/tab_controller.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_card.dart';
import 'package:prelura_app/modules/views/widgets/rating.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/app_button.dart';

class UserWardrobe extends ConsumerWidget {
  const UserWardrobe({super.key, this.username});
  final String? username;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch((username != null ? otherUserProfile(username!) : userProvider)).valueOrNull;

    return SingleChildScrollView(
      child: Column(
        children: [
          if (username != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                          Text("Exeter, United Kingdom", style: Theme.of(context).textTheme.bodyMedium),
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
                                    context.router.push(const FollowersRoute());
                                  },
                                text: "3",
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      color: Theme.of(context).textTheme.bodySmall?.color,
                                    ),
                                children: [
                                  TextSpan(
                                    text: " followers,",
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      color: Theme.of(context).textTheme.bodySmall?.color,
                                    ),
                                children: [
                                  TextSpan(
                                    text: " following",
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                          Text("Usually ships within 1 day", style: Theme.of(context).textTheme.bodyMedium),
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
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.activeColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                      // Handle Message button
                    },
                    text: "Message",
                    textColor: PreluraColors.white,
                    bgColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: AppButton(
                    onTap: () {
                      // Handle Follow button
                    },
                    text: "Follow",
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
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                    ),
                  ),
                ),
          )
        ],
      ),
    );
  }
}
