import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/about_profile.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/review_tab.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/user_wardrobe.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/gesture_navigator.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../../../res/render_svg.dart';
import '../../../widgets/profile_picture.dart';
import '../provider/tab_controller.dart';

@RoutePage()
class UserProfileDetailsScreen extends ConsumerStatefulWidget {
  const UserProfileDetailsScreen({super.key, this.username});
  final String? username;

  @override
  ConsumerState<UserProfileDetailsScreen> createState() =>
      _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends ConsumerState<UserProfileDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    // Get the initial index from the provider
    final initialIndex = ref.read(tabControllerProvider).currentIndex;

    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: initialIndex,
    );

    // Listen for tab index changes
    _tabController.addListener(() {
      if (_tabController.index !=
          ref.read(tabControllerProvider).currentIndex) {
        ref.read(tabControllerProvider).setTabIndex(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(tabControllerProvider).currentIndex;
    final user = ref
        .watch((widget.username != null
            ? otherUserProfile(widget.username!)
            : userProvider))
        .valueOrNull;

    if (_tabController.index != currentIndex) {
      _tabController.index =
          currentIndex; // Sync tab index if changed externally
    }

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appbarTitle: user?.username ?? "--",
        // leadingIcon: IconButton(
        //   icon:
        //       Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
        //   onPressed: () => context.router.popForced(),
        // ),
        trailingIcon: [
          GestureDetector(
              onTap: () => context.pushRoute(MenuRoute()),
              child: RenderSvg(
                svgPath: PreluraIcons.menu_svg,
                svgHeight: 21,
                svgWidth: 21,
              )),
          10.horizontalSpacing,
        ],
      ),
      // body: Column(
      //   children: [
      //     Row(
      //       children: ["Wardrobe", "Reviews", "About"]
      //           .asMap()
      //           .entries
      //           .map(
      //             (entry) => Expanded(
      //               child: GestureDetector(
      //                 onTap: () {
      //                   ref.read(tabControllerProvider).setTabIndex(entry.key);
      //                   _tabController.animateTo(entry.key);
      //                 },
      //                 child: Container(
      //                   padding: const EdgeInsets.only(
      //                     left: 10,
      //                     right: 10,
      //                     top: 12,
      //                     bottom: 18,
      //                   ),
      //                   decoration: BoxDecoration(
      //                     border: Border(
      //                       bottom: BorderSide(
      //                         color: currentIndex == entry.key ? PreluraColors.activeColor : PreluraColors.greyColor.withOpacity(0.5),
      //                         width: _tabController.index == entry.key ? 2.0 : 1.0,
      //                       ),
      //                     ),
      //                   ),
      //                   child: Text(
      //                     entry.value,
      //                     textAlign: TextAlign.center,
      //                     style: TextStyle(
      //                       color: currentIndex == entry.key ? Theme.of(context).textTheme.bodyMedium?.color : PreluraColors.greyLightColor,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           )
      //           .toList(),
      //     ),
      //     Expanded(
      //       child: TabBarView(
      //         controller: _tabController,
      //         children: [
      //           ref.watch((widget.username != null ? otherUserProfile(widget.username!) : userProvider)).when(
      //                 data: (_) => UserWardrobe(
      //                   username: widget.username,
      //                 ),
      //                 error: (e, _) {
      //                   print(e.toString());
      //                   print(_);
      //                   return Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       const Text('An error occured!'),
      //                       TextButton.icon(
      //                         onPressed: () => ref.invalidate(userProvider),
      //                         label: const Text('Retry'),
      //                         icon: const Icon(Icons.refresh_rounded),
      //                       ),
      //                     ],
      //                   );
      //                 },
      //                 loading: () => const LoadingWidget(),
      //               ),

      //           // const UserWardrobe(),
      //           const ReviewTab(),
      //           AboutProfile(
      //             username: widget.username,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      body: UserWardrobe(),
    );
  }
}
