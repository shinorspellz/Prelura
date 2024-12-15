import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/res/theme.dart';

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
  (ref) {
    final settingsBox = Hive.box('settings');
    return ThemeNotifier(settingsBox);
  },
);

class ThemeNotifier extends StateNotifier<ThemeMode> {
  static const _themeKey = 'themeMode';
  final Box settingsBox;

  ThemeNotifier(this.settingsBox)
      : super(
          _loadThemeModeFromHive(settingsBox),
        );

  static ThemeMode _loadThemeModeFromHive(Box box) {
    final themeIndex = box.get(_themeKey, defaultValue: ThemeMode.system.index);
    return ThemeMode.values[themeIndex];
  }

  void toggleThemeMode() {
    if (state == ThemeMode.light) {
      _setThemeMode(ThemeMode.dark); // Switch to dark mode
    } else {
      _setThemeMode(ThemeMode.light); // Switch to light mode
    }
  }

  void _setThemeMode(ThemeMode mode) {
    settingsBox.put(_themeKey, mode.index); // Save theme to Hive
    state = mode; // Update the state
  }
}
