import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ChangeNotifier to manage the state of the tab index
class TabControllerProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setTabIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

/// Riverpod provider to expose the TabControllerProvider instance
final tabControllerProvider = ChangeNotifierProvider<TabControllerProvider>(
  (ref) => TabControllerProvider(),
);
