import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});
final sizeProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getSize();

  return result;
});

final productProvider = AsyncNotifierProvider<_ProductProvider, List<Product>>(_ProductProvider.new);

class _ProductProvider extends AsyncNotifier<List<Product>> {
  late final _productRepo = ref.read(productRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  FutureOr<List<Product>> build() => [];

  Future<void> uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      onUploadProgress: (sent, total) => log('${sent / total}%', name: 'FileUpload'),
    );

    log('$upload', name: 'FileUpload');
  }

  Future<void> createProduct({
    required String title,
    required String desc,
    required double price,
    required List<Input$ImagesInputType> images,
    required List<int> size,
    String? condition,
    int? category,
    int? subCategory,
    double? postagePrice,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final result = await _productRepo.createProduct(
        Variables$Mutation$CreateProduct(
          category: category,
          subCategory: subCategory,
          condition: condition,
          description: desc,
          imageUrl: images,
          price: price,
          size: size,
          title: title,
          postagePrice: postagePrice,
        ),
      );

      return [
        ...[result]
      ];
    });
  }
}
