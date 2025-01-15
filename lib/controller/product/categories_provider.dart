import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/product/categories/new_categories.dart';
import 'package:prelura_app/repo/product/category_repo.dart';
import 'package:prelura_app/repo/product/offer_repo.dart';

class CategoryNotifier extends StateNotifier<CategoriesState> {
  final CategoriesRepo categoriesRepo;
  final Ref ref;
  CategoryNotifier(this.categoriesRepo, this.ref)
      : super(
          CategoriesState(),
        );

  void updateState(Map<String, dynamic> data) {
    // Initialize updatedCategoriesLog to hold the merged result
    Map<String, List<Categoriess>> updatedCategoriesLog =
        Map.from(state.categoriesLog);

    // Check if the data contains a new categoriesLog entry
    if (data.containsKey("catLog")) {
      final Map<String, List<Categoriess>> newCategoryLogs =
          data['catLog'] as Map<String, List<Categoriess>>;

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
      categoriesLog: data.containsKey("catLog")
          ? updatedCategoriesLog
          : state.categoriesLog,
    );
  }

  void fetchCategories(BuildContext context, int? parentId) async {
    try {
      updateState({"isLoading": true});

      final List<Query$Categoriess$categoriess?>? categories =
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
      updateState({
        "isLoading": false,
        "catLog": {"${parentId ?? 10000}": categoriesList},
      });
    } on OfferException catch (e) {
      updateState({"isLoading": false});
      log('Offer exception: $e');
      context.alert(e.message);
    } catch (e) {
      log('Error fetching categories: $e');
      updateState({"isLoading": false});
    }
  }
}

final categoryNotifierProvider =
    StateNotifierProvider<CategoryNotifier, CategoriesState>((ref) {
  final repo = ref.read(categoriesRepo);
  return CategoryNotifier(repo, ref);
});

class CategoriesState {
  final bool isLoading;
  final Map<String, List<Categoriess>> categoriesLog;

  CategoriesState({
    this.isLoading = false,
    this.categoriesLog = const {},
  });

  //copyWith
  CategoriesState copyWith({
    bool? isLoading,
    Map<String, List<Categoriess>>? categoriesLog,
  }) =>
      CategoriesState(
        isLoading: isLoading ?? this.isLoading,
        categoriesLog: categoriesLog ?? this.categoriesLog,
      );
}
