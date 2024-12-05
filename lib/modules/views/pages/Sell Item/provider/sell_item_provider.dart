import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';

class SellItemState {
  final List<XFile> images;
  final String title;
  final String description;
  final CategoryModel? category;
  final CategoryModel? subCategory;
  final String parcel;
  final List<String> selectedColors;
  final List<String> selectedMaterials;
  final String brand;
  final Enum$SizeEnum? size;
  final String? price;
  final String selectedCondition;

  SellItemState({
    this.images = const [],
    this.title = '',
    this.description = '',
    this.category,
    this.subCategory,
    this.parcel = "",
    this.brand = "",
    this.size,
    this.selectedCondition = "",
    this.price,
    this.selectedColors = const [],
    this.selectedMaterials = const [],
  });

  SellItemState copyWith(
      {List<XFile>? images,
      String? title,
      String? description,
      CategoryModel? category,
      CategoryModel? subCategory,
      String? parcel,
      List<String>? selectedColors,
      List<String>? selectedMaterials,
      String? brand,
      Enum$SizeEnum? size,
      String? price,
      String? selectedCondition}) {
    return SellItemState(
        images: images ?? this.images,
        title: title ?? this.title,
        description: description ?? this.description,
        category: category ?? this.category,
        subCategory: subCategory ?? this.subCategory,
        parcel: parcel ?? this.parcel,
        size: size ?? this.size,
        brand: brand ?? this.brand,
        price: price ?? this.price,
        selectedColors: selectedColors ?? this.selectedColors,
        selectedCondition: selectedCondition ?? this.selectedCondition,
        selectedMaterials: selectedMaterials ?? this.selectedMaterials);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SellItemState) return false;
    return images.length == other.images.length &&
        title == other.title &&
        description == other.description &&
        category == other.category &&
        price == other.price &&
        parcel == other.parcel &&
        brand == other.brand &&
        size == other.size &&
        selectedColors == other.selectedColors &&
        selectedCondition == other.selectedCondition &&
        selectedMaterials == other.selectedMaterials;
  }

  @override
  int get hashCode => Object.hash(title, description, category, images.length, selectedColors.length, selectedCondition, selectedMaterials.length, parcel, price, size, brand);
}

class SellItemNotifier extends StateNotifier<SellItemState> {
  SellItemNotifier() : super(SellItemState()) {
    _initialState = state;
  }

  final ImagePicker _picker = ImagePicker();
  late final SellItemState _initialState;
  static const int maxColorSelections = 2;
  static const int maxMaterialSelections = 3;

  bool hasChanges() {
    return state != _initialState;
  }

  // Add an image
  Future<void> addImages() async {
    final pickedImages = await _picker.pickMultiImage();
    state = state.copyWith(images: [...state.images, ...pickedImages]);
  }

  // Update title
  void updateTitle(String title) {
    state = state.copyWith(title: title);
    log(state.title);
  }

  void resetState() {
    state = SellItemState();
  }

  // Update description
  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void selectParcel(String selectedParcel) {
    state = state.copyWith(parcel: selectedParcel);
  }

  void updateCategory(CategoryModel category) {
    state = state.copyWith(category: category);
  }

  void updateSubCategory(CategoryModel subCategory) {
    state = state.copyWith(subCategory: subCategory);
  }

  void selectSize(Enum$SizeEnum size) {
    state = state.copyWith(size: size);
  }

  void updatePrice(String? price) {
    state = state.copyWith(price: price);
  }

  void selectBrand(String? brand) {
    state = state.copyWith(brand: brand);
  }

  void selectCondition(String selectedCondition) {
    state = state.copyWith(selectedCondition: selectedCondition);
  }

  // Add or remove a color
  void toggleColor(String color) {
    final currentSelections = state.selectedColors;
    if (currentSelections.contains(color)) {
      // Remove color
      state = state.copyWith(
        selectedColors: currentSelections.where((c) => c != color).toList(),
      );
    } else {
      if (currentSelections.length < maxColorSelections) {
        // Add color
        state = state.copyWith(
          selectedColors: [...currentSelections, color],
        );
      }
    }
  }

  // Check if the color is selected
  bool isColorSelected(String color) {
    return state.selectedColors.contains(color);
  }

  // Check if max selections are reached
  bool canSelectMoreColor() {
    return state.selectedColors.length < maxColorSelections;
  }

  void toggleMaterial(String material) {
    final currentSelections = state.selectedMaterials;

    // Check if the material is already selected
    final isSelected = currentSelections.contains(material);

    state = state.copyWith(
      selectedMaterials: isSelected
          ? currentSelections.where((m) => m != material).toList() // Remove material
          : (currentSelections.length < maxMaterialSelections
              ? [...currentSelections, material] // Add material if under limit
              : currentSelections),
    );
  }

  bool isMaterialSelected(String material) {
    return state.selectedMaterials.contains(material);
  }

  bool canSelectMoreMaterial() {
    return state.selectedMaterials.length < maxMaterialSelections;
  }

  // Validate input
  bool validateInputs() {
    return state.title.isNotEmpty || state.description.isNotEmpty;
  }

  // Simulate Upload
  Future<void> uploadItem() async {
    // Simulate an API call or database operation
    if (validateInputs()) {
      // Add your upload logic here
    }
  }
}

final sellItemProvider = StateNotifierProvider<SellItemNotifier, SellItemState>(
  (ref) => SellItemNotifier(),
);
