import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/model/product/material/material_model.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

class SellItemState {
  final List<XFile> images;
  final String title;
  final String description;
  final CategoryModel? category;
  final CategoryModel? subCategory;
  final Enum$ParcelSizeEnum? parcel;
  final List<String> selectedColors;
  final List<MaterialModel> selectedMaterials;
  final Brand? brand;
  final Enum$SizeEnum? size;
  final String? price;
  final String? discount;
  final ConditionsEnum? selectedCondition;
  final Enum$StyleEnum? style;
  final String? customBrand;
  final bool isFeatured;

  SellItemState(
      {this.images = const [],
      this.title = '',
      this.description = '',
      this.category,
      this.subCategory,
      this.parcel,
      this.brand,
      this.size,
      this.selectedCondition,
      this.price,
      this.selectedColors = const [],
      this.selectedMaterials = const [],
      this.style,
      this.discount,
      this.customBrand,
      this.isFeatured = false});

  SellItemState copyWith({
    List<XFile>? images,
    String? title,
    String? description,
    CategoryModel? category,
    CategoryModel? subCategory,
    Enum$ParcelSizeEnum? parcel,
    List<String>? selectedColors,
    List<MaterialModel>? selectedMaterials,
    Brand? brand,
    Enum$SizeEnum? size,
    String? price,
    String? discount,
    Enum$StyleEnum? style,
    ConditionsEnum? selectedCondition,
    String? customBrand,
    bool? isFeatured,
  }) {
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
      selectedMaterials: selectedMaterials ?? this.selectedMaterials,
      style: style ?? this.style,
      discount: discount ?? this.discount,
      customBrand: customBrand ?? this.customBrand,
      isFeatured: isFeatured ?? this.isFeatured,
    );
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
  static const int maxColorSelections = 3;
  static const int maxMaterialSelections = 3;

  bool hasChanges() {
    return state != _initialState;
  }

  // Add an image
  Future<void> addImages() async {
    final pickedImages = await _picker.pickMultiImage();
    state = state.copyWith(images: [...state.images, ...pickedImages]);
  }

  void deleteImage(XFile id) {
    final currentImages = state.images;
    state = state.copyWith(
      images: currentImages.where((c) => c != id).toList(),
    );
  }

  // Update title
  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void resetState() {
    state = SellItemState();
  }

  void updateFeatured(bool isFeatured) {
    state = state.copyWith(isFeatured: isFeatured);
  }

  // Update description
  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void selectParcel(Enum$ParcelSizeEnum selectedParcel) {
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
    log('${state.price}');
  }

  void updateDiscount(String? price) {
    state = state.copyWith(discount: price);
    log('${state.discount}');
  }

  void selectBrand(Brand? brand) {
    state = state.copyWith(brand: brand, customBrand: null);
  }

  void selectCustomBrand(String? brand) {
    state = state.copyWith(customBrand: brand, brand: null);
  }

  void selectCondition(ConditionsEnum selectedCondition) {
    state = state.copyWith(selectedCondition: selectedCondition);
  }

  void selectStyle(Enum$StyleEnum style) {
    state = state.copyWith(style: style);
  }

  void productToItem(ProductModel product) {
    state = state.copyWith(
      title: product.name,
      description: product.description,
      category: product.category,
      subCategory: product.subCategory,
      parcel: product.parcelSize != null ? Enum$ParcelSizeEnum.fromJson(product.parcelSize!.toJson()) : null,
      size: product.size != null ? Enum$SizeEnum.fromJson(product.size!.toJson()) : null,
      price: product.price.toString(),
      selectedCondition: product.condition,
      brand: product.brand,
      selectedColors: product.color,
      selectedMaterials: product.materials,
      style: product.style,
      discount: product.discountPrice.toString(),
      customBrand: product.customBrand,
      isFeatured: product.isFeatured,
    );
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

  void updateSelectedMaterials(List<MaterialModel> materials) {
    state = state.copyWith(selectedMaterials: materials);
  }

  void toggleMaterial(MaterialModel material) {
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

  bool isMaterialSelected(MaterialModel material) {
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
