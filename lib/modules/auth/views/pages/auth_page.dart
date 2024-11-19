import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/pages/home.dart';
import 'package:prelura_app/modules/auth/views/pages/user_profile.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../res/images.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int _currentIndex = 0;

  // Define the pages
  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // Current active index
          onTap: (int index) {
            setState(() {
              _currentIndex = index; // Update the current index
            });
          },
          iconSize: 24,
          elevation: 3.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: PreluraColors.activeColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                PreluraIcons.homeIcon,
                color: PreluraColors.activeColor,
              ),
              activeIcon: Icon(
                Icons.home,
                size: 24,
                color: PreluraColors.activeColor,
                fill: 1,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
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
            BottomNavigationBarItem(
              icon: Icon(
                Icons.email_outlined,
                size: 24,
              ),
              activeIcon: Icon(
                Icons.person,
                color: PreluraColors.activeColor,
                size: 24,
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
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
          ]),
    );
  }
}
