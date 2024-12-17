import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/notification_service.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/views/pages/home.dart';
import 'package:prelura_app/modules/views/pages/user_profile.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../core/router/router.dart';
import '../../../res/images.dart';

final routePathProvider = StateProvider<int>(
  (_) => 0,
);

@RoutePage()
class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key});

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final showBottomNavBar = ref.watch(showBottomNavBarProvider);

    // inits the notification provider and register all neccesary
    // data for notfication
    ref.watch(notificationServiceProvider);

    return DefaultTabController(
      length: 5,
      child: AutoTabsRouter(
          routes: const [
            HomeRoute(),
            SearchRoute(),
            // SellNavigationRoute(),
            InboxRoute(),
            ProfileNavigationRoute()
          ],
          builder: (context, child) {
            final tabRouter = AutoTabsRouter.of(context);
            final isSellItemRoute = tabRouter.current.name == SellNavigationRoute.name;

            return Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: child,
              // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              // floatingActionButton: const CircleAvatar(
              //   child: Column(
              //     children: [
              //       Icon(Icons.add_circle_outline_rounded),
              //       Text('Sell'),
              //     ],
              //   ),
              // ),
              bottomNavigationBar: SizedBox(
                height: 80,
                child: TabBar(
                    padding: const EdgeInsets.only(top: 5, bottom: 15),
                    onTap: (index) {
                      switch (index) {
                        case 0:
                          tabRouter.stackRouterOfIndex(3)?.popUntilRoot();
                          tabRouter.setActiveIndex(index);
                          HomeScreen.homeScrollController.animateTo(
                            0.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );

                          break;
                        case 1:
                          tabRouter.stackRouterOfIndex(3)?.popUntilRoot();
                          tabRouter.setActiveIndex(index);
                          break;
                        case 2:
                          tabRouter.stackRouterOfIndex(3)?.popUntilRoot();
                          HapticFeedback.lightImpact();
                          context.pushRoute(SellItemRoute());
                          break;
                        case 3:
                          tabRouter.stackRouterOfIndex(3)?.popUntilRoot();
                          tabRouter.setActiveIndex(2);
                          break;
                        case 4:
                          tabRouter.stackRouterOfIndex(3)?.popUntilRoot();
                          tabRouter.setActiveIndex(3);
                          ProfileScreen.menuScrollController.animateTo(
                            0.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          break;
                        default:
                      }
                    },
                    labelColor: Colors.grey,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      TabItem(
                          isActive: tabRouter.activeIndex == 0,
                          icon: const Icon(
                            Icons.home,
                            size: 24,
                            fill: 1,
                          ),
                          activeIcon: const Icon(
                            Icons.home,
                            size: 24,
                            color: PreluraColors.activeColor,
                            fill: 1,
                          ),
                          label: 'Home'),
                      TabItem(
                        isActive: tabRouter.activeIndex == 1,
                        // onChanged: () => tabRouter.setActiveIndex(1),
                        icon: const Icon(
                          Icons.search,
                          size: 24,
                        ),
                        activeIcon: const Icon(Icons.search, color: PreluraColors.activeColor, size: 24),
                        label: 'Search',
                      ),
                      const TabItem(
                        isActive: false,
                        // onChanged: () {},
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 24,
                        ),
                        activeIcon: Icon(Icons.add_circle_outline, color: PreluraColors.activeColor, size: 24),
                        label: 'Sell',
                      ),
                      TabItem(
                        isActive: tabRouter.activeIndex == 2,
                        // onChanged: () => tabRouter.setActiveIndex(2),
                        icon: const Icon(
                          Icons.email_outlined,
                          size: 24,
                        ),
                        activeIcon: const Icon(
                          Icons.email_outlined,
                          color: PreluraColors.activeColor,
                          size: 24,
                        ),
                        label: 'Inbox',
                      ),
                      TabItem(
                        isActive: tabRouter.activeIndex == 3,
                        // onChanged: () => tabRouter.setActiveIndex(3),
                        icon: const Icon(
                          Icons.person_outline,
                          size: 24,
                        ),
                        activeIcon: const Icon(
                          Icons.person,
                          color: PreluraColors.activeColor,
                          size: 24,
                        ),
                        label: 'Profile',
                      ),
                    ]),
              ),
              // !showBottomNavBar
              //     ? null
              //     : SafeArea(
              //         child: BottomNavigationBar(
              //           currentIndex: tabRouter.activeIndex,
              //           onTap: (int index) {
              //             if (tabRouter.activeIndex == index && index != 0) {
              //               tabRouter.stackRouterOfIndex(index)?.popUntilRoot();
              //             } else {
              //               tabRouter.setActiveIndex(index);
              //               if (index != 2) {
              //                 ref.read(routePathProvider.notifier).state = index;
              //               }
              //             }
              //           },
              //           iconSize: 24,
              //           elevation: 0,
              //           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              //           selectedFontSize: 15,
              //           unselectedFontSize: 15,
              //           selectedItemColor: PreluraColors.activeColor,
              //           type: BottomNavigationBarType.fixed,
              //           selectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              //           unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              //           items: const [
              //             BottomNavigationBarItem(
              //               icon: Icon(
              //                 Icons.home,
              //                 size: 24,
              //                 fill: 1,
              //               ),
              //               activeIcon: Icon(
              //                 Icons.home,
              //                 size: 24,
              //                 color: PreluraColors.activeColor,
              //                 fill: 1,
              //               ),
              //               label: 'Home',
              //             ),
              //             BottomNavigationBarItem(
              //               icon: Icon(
              //                 Icons.search,
              //                 size: 24,
              //               ),
              //               activeIcon: Icon(Icons.search, color: PreluraColors.activeColor, size: 24),
              //               label: 'Search',
              //             ),
              //             // BottomNavigationBarItem(
              //             //   activeIcon: Icon(
              //             //     Icons.add_circle,
              //             //     color: PreluraColors.activeColor,
              //             //     size: 24,
              //             //   ),
              //             //   icon: Icon(
              //             //     Icons.add_circle_outline,
              //             //     size: 24,
              //             //   ),
              //             //   label: 'Sell',
              //             // ),
              //             BottomNavigationBarItem(
              //               icon: Icon(
              //                 Icons.email_outlined,
              //                 size: 24,
              //               ),
              //               activeIcon: Icon(
              //                 Icons.email_outlined,
              //                 color: PreluraColors.activeColor,
              //                 size: 24,
              //               ),
              //               label: 'Inbox',
              //             ),
              //             BottomNavigationBarItem(
              //               icon: Icon(
              //                 Icons.person_outline,
              //                 size: 24,
              //               ),
              //               activeIcon: Icon(
              //                 Icons.person,
              //                 color: PreluraColors.activeColor,
              //                 size: 24,
              //               ),
              //               label: 'Profile',
              //             ),
              //           ],
              //         ),
              //       ),
            );
          }),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.isActive,
    required this.icon,
    this.activeIcon,
    required this.label,
    this.onChanged,
  });
  final bool isActive;
  final Widget icon;
  final Widget? activeIcon;
  final String label;
  final VoidCallback? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Column(
        children: [
          8.verticalSpacing,
          if (activeIcon != null && isActive) activeIcon ?? icon else icon,
          2.verticalSpacing,
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: isActive ? PreluraColors.activeColor : Colors.grey,
                ),
          ),
          8.verticalSpacing,
        ],
      ),
    );
  }
}
