import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../res/images.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          SellItemRoute(),
          InboxRoute(),
          ProfileNavigationRoute()
        ],
        builder: (context, child) {
          final tabRouter = AutoTabsRouter.of(context);
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: child,
            bottomNavigationBar: SafeArea(
              child: BottomNavigationBar(
                currentIndex: tabRouter.activeIndex,
                onTap: (int index) {
                  if (tabRouter.activeIndex == index) {
                    tabRouter.stackRouterOfIndex(index)?.popUntilRoot();
                  } else {
                    tabRouter.setActiveIndex(index);
                  }
                },
                iconSize: 24,
                elevation: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                selectedFontSize: 15,
                unselectedFontSize: 15,
                selectedItemColor: PreluraColors.activeColor,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      PreluraIcons.homeIcon,
                      color: PreluraColors.greyColor,
                    ),
                    activeIcon: const Icon(
                      Icons.home,
                      size: 24,
                      color: PreluraColors.activeColor,
                      fill: 1,
                    ),
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    activeIcon: Icon(Icons.search,
                        color: PreluraColors.activeColor, size: 24),
                    label: 'Search',
                  ),
                  const BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.add_circle,
                      color: PreluraColors.activeColor,
                      size: 24,
                    ),
                    icon: Icon(
                      Icons.add_circle_outline,
                      size: 24,
                    ),
                    label: 'Sell',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.email_outlined,
                      size: 24,
                    ),
                    activeIcon: Icon(
                      Icons.email_outlined,
                      color: PreluraColors.activeColor,
                      size: 24,
                    ),
                    label: 'Inbox',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 24,
                    ),
                    activeIcon: Icon(
                      Icons.person,
                      color: PreluraColors.activeColor,
                      size: 24,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
