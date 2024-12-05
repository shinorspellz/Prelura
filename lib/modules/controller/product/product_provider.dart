import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

final allProductProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getAllProducts(pageCount: 100);

  return result.reversed.toList();
});

final userProduct = FutureProvider.family<List<Product>, String?>((ref, username) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getUserProduct(username: username, pageCount: 100);

  return result.reversed.toList();
});

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});

final productProvider = AsyncNotifierProvider<_ProductProvider, void>(_ProductProvider.new);

class _ProductProvider extends AsyncNotifier<void> {
  late final _productRepo = ref.read(productRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  FutureOr<List<Product>> build() => [];

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      onUploadProgress: (sent, total) => log('${sent / total}%', name: 'FileUpload'),
    );

    if (upload == null) throw 'Failed to upload images.';

    return upload;
  }

  Future<void> createProduct(
      {required String title,
      required String desc,
      required double price,
      required List<File> images,
      required Enum$SizeEnum size,
      Enum$ConditionEnum? condition,
      int? category,
      int? subCategory,
      Enum$ParcelSizeEnum? parcelSize,
      double? discount}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final files = await _uploadMedia(images);

      await _productRepo.createProduct(
        Variables$Mutation$CreateProduct(
          category: category,
          subCategory: subCategory,
          condition: condition,
          description: desc,
          imageUrl: files,
          price: price,
          size: size,
          title: title,
          parcelSize: parcelSize,
          discount: discount,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }
}
