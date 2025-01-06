import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the state: contains the list of selected colors
class ColorSelectorState {
  final List<String> selectedColors;

  ColorSelectorState({this.selectedColors = const []});

  ColorSelectorState copyWith({List<String>? selectedColors}) {
    return ColorSelectorState(
      selectedColors: selectedColors ?? this.selectedColors,
    );
  }
}

// StateNotifier to handle logic
class ColorSelectorNotifier extends StateNotifier<ColorSelectorState> {
  static const int maxSelections = 2;

  ColorSelectorNotifier() : super(ColorSelectorState());

  // Add or remove a color
  void toggleColor(String color) {
    final currentSelections = state.selectedColors;
    if (currentSelections.contains(color)) {
      // Remove color
      state = state.copyWith(
        selectedColors: currentSelections.where((c) => c != color).toList(),
      );
    } else {
      if (currentSelections.length < maxSelections) {
        // Add color
        state = state.copyWith(
          selectedColors: [...currentSelections, color],
        );
      }
    }
  }

  // Check if the color is selected
  bool isSelected(String color) {
    return state.selectedColors.contains(color);
  }

  // Check if max selections are reached
  bool canSelectMore() {
    return state.selectedColors.length < maxSelections;
  }
}

// Riverpod provider
final colorSelectorProvider =
    StateNotifierProvider<ColorSelectorNotifier, ColorSelectorState>(
  (ref) => ColorSelectorNotifier(),
);
