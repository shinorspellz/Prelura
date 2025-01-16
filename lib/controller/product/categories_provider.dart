import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/product/categories/new_categories.dart';
import 'package:prelura_app/model/product/categories/size_model.dart';
import 'package:prelura_app/repo/product/category_repo.dart';
import 'package:prelura_app/repo/product/offer_repo.dart';

class CategoryNotifier extends StateNotifier<CategoriesState> {
  final CategoriesRepo categoriesRepo;
  final Box _cacheBox;
  final Ref ref;
  CategoryNotifier(this.categoriesRepo, this.ref, this._cacheBox)
      : super(
          CategoriesState(),
        );

  updateState(Map<String, dynamic> data) {
    // Initialize updatedCategoriesLog to hold the merged result
    Map<String, List<Categoriess>> updatedCategoriesLog =
        Map.from(state.categoriesLog);

    // Check if the data contains a new categoriesLog entry
    if (data.containsKey("categoriesLog")) {
      final Map<String, List<Categoriess>> newCategoryLogs =
          data['categoriesLog'] as Map<String, List<Categoriess>>;

      // Merge the new data with the stored categoriesLog
      newCategoryLogs.forEach((key, value) {
        if (updatedCategoriesLog.containsKey(key)) {
          // If the key exists, append the new categories without duplicating
          final existingList = updatedCategoriesLog[key] ?? [];
          updatedCategoriesLog[key] = [
            // ...existingList,
            ...value.where((item) => !existingList.contains(item)),
          ];
        } else {
          // Add the new key and categories if it doesn't exist
          updatedCategoriesLog[key] = value;
        }
      });
    }

    // Update the state using copyWith
    state = state.copyWith(
      isLoading: data['isLoading'] ?? state.isLoading,
      selectedSize: data['selectedSize'] ?? state.selectedSize,
      categorySize: data['categorySize'] ?? state.categorySize,
      selectedCategory: data['selectedCategory'] ?? state.selectedCategory,
      categoriesLog: data.containsKey("categoriesLog")
          ? updatedCategoriesLog
          : state.categoriesLog,
    );
  }

  _cacheData() {
    String payload = jsonEncode(state.toJson());
    _cacheBox.put('categories', payload);
    log("::::You called the cache room ::: $payload");
  }

  loadDataFromCache() {
    final data = _cacheBox.get("categories");
    if (data != null) {
      updateState(
        {
          "categoriesLog":
              CategoriesState.fromJson(jsonDecode(data)).categoriesLog
        },
      );
    }
  }

  clearCache() {
    _cacheBox.delete('categories');
  }

  void fetchCategories(BuildContext context, int? parentId) async {
    if (state.categoriesLog.containsKey("${parentId ?? 10000}")) {
      return;
    }
    try {
      updateState({"isLoading": true});

      final List<Query$Categories$categories?>? categories =
          await categoriesRepo.fetchCategories(
        parentId: parentId,
      );
      if (categories == null || categories.isEmpty) {
        updateState({"isLoading": false});
        return;
      }
      final List<Categoriess> categoriesList = categories
          .map(
            (
              category,
            ) =>
                Categoriess.fromJson(category!.toJson()),
          )
          .toList();
      await updateState({
        "isLoading": false,
        "categoriesLog": {"${parentId ?? 10000}": categoriesList},
      });
      _cacheData();
    } on OfferException catch (e) {
      updateState({"isLoading": false});
      log('Offer exception: $e');
      context.alert(e.message);
    } catch (e) {
      log('Error fetching categories: $e');
      updateState({"isLoading": false});
    }
  }

  void fetchSizes() async {
    try {
      final List<Query$Sizes$sizes?>? sizes = await categoriesRepo
          .fetchSizes(state.selectedCategory?.fullPath ?? "");

      if (sizes == null || sizes.isEmpty) {
        return;
      }

      final List<Size> sizeList = sizes
          .map(
            (
              size,
            ) =>
                Size.fromJson(size!.toJson()),
          )
          .toList();
      await updateState({"categorySize": sizeList});
      // _cacheData();
    } on OfferException catch (e) {
      log('Offer exception: $e');
      // context.alert(e.message);
    } catch (e) {
      log('Error fetching categories: $e');
    }
  }
}

final categoryNotifierProvider =
    StateNotifierProvider<CategoryNotifier, CategoriesState>((ref) {
  final repo = ref.read(categoriesRepo);
  final cacheBox = ref.read(hive).requireValue;
  return CategoryNotifier(repo, ref, cacheBox);
});

class CategoriesState {
  final bool isLoading;
  final List<Size>? categorySize;
  final Size? selectedSize;
  final Map<String, List<Categoriess>> categoriesLog;
  final Categoriess? selectedCategory;

  CategoriesState({
    this.isLoading = false,
    this.categorySize,
    this.selectedSize,
    this.categoriesLog = const {},
    this.selectedCategory,
  });

  //copyWith
  CategoriesState copyWith({
    bool? isLoading,
    Map<String, List<Categoriess>>? categoriesLog,
    Categoriess? selectedCategory,
    List<Size>? categorySize,
    Size? selectedSize,
  }) =>
      CategoriesState(
        isLoading: isLoading ?? this.isLoading,
        selectedSize: selectedSize ?? this.selectedSize,
        categorySize: categorySize ?? this.categorySize,
        categoriesLog: categoriesLog ?? this.categoriesLog,
        selectedCategory: selectedCategory ?? this.selectedCategory,
      );

  // To JSON
  Map<String, dynamic> toJson() {
    return {
      'isLoading': isLoading,
      "selectedCategory": null,
      'categoriesLog': categoriesLog.map(
        (key, value) => MapEntry(
          key,
          value.map((category) => category.toJson()).toList(),
        ),
      ),
    };
  }

  // From JSON
  factory CategoriesState.fromJson(Map<String, dynamic> json) {
    return CategoriesState(
      isLoading: false,
      selectedCategory: null,
      categoriesLog: (json['categoriesLog'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          (value as List<dynamic>)
              .map((category) => Categoriess.fromJson(category))
              .toList(),
        ),
      ),
    );
  }
}
