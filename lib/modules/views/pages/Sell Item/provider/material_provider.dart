import 'package:flutter_riverpod/flutter_riverpod.dart';

final materialProvider =
    StateNotifierProvider<MaterialSelectorNotifier, MaterialSelectorState>(
        (ref) {
  return MaterialSelectorNotifier();
});

class MaterialSelectorState {
  final List<String> selectedMaterials;

  MaterialSelectorState({this.selectedMaterials = const []});

  MaterialSelectorState copyWith({List<String>? selectedMaterials}) {
    return MaterialSelectorState(
      selectedMaterials: selectedMaterials ?? this.selectedMaterials,
    );
  }
}

class MaterialSelectorNotifier extends StateNotifier<MaterialSelectorState> {
  static const int maxSelections = 3;

  MaterialSelectorNotifier() : super(MaterialSelectorState());

  final List<String> materials = ["Material 1", "Material 2", "Material 3"];

  void toggleMaterial(String material) {
    final currentSelections = state.selectedMaterials;

    // Check if the material is already selected
    final isSelected = currentSelections.contains(material);

    state = state.copyWith(
      selectedMaterials: isSelected
          ? currentSelections
              .where((m) => m != material)
              .toList() // Remove material
          : (currentSelections.length < maxSelections
              ? [...currentSelections, material] // Add material if under limit
              : currentSelections),
    );
  }

  bool isSelected(String material) {
    return state.selectedMaterials.contains(material);
  }

  bool canSelectMore() {
    return state.selectedMaterials.length < maxSelections;
  }
}
