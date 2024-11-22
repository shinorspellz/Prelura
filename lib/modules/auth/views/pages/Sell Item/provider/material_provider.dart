import 'package:flutter_riverpod/flutter_riverpod.dart';

final materialProvider = StateNotifierProvider<MaterialNotifier, String?>((ref) {
  return MaterialNotifier();
});

class MaterialSelectorState {
  final List<String> selectedColors;

  MaterialSelectorState({this.selectedColors = const []});

  MaterialSelectorState copyWith({List<String>? selectedColors}) {
    return MaterialSelectorState(
      selectedColors: selectedColors ?? this.selectedColors,
    );
  }
}

class MaterialNotifier extends StateNotifier<String?> {
  MaterialNotifier() : super(null);

  final List<String> materials = ["Material 1", "Material 2", "Material 3"];

  void selectMaterial(String selectedMaterial) {
    state = selectedMaterial;
  }
}
