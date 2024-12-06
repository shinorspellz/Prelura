import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

final allProductProvider = FutureProvider((ref) async {
  log('Triggered All Product Provider Getting Product.....');
  final repo = ref.watch(productRepo);

  final result = await repo.getAllProducts(pageCount: 100);
  log('Got All Product....');

  return result.reversed.toList();
});

final searchProductProvider =
    FutureProvider.family<List<Product>, String?>((ref, query) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getAllProducts(search: query);
  print(result);

  return result.reversed.toList();
});

final toggleLikeProductProvider =
    FutureProvider.family<bool, int>((ref, query) async {
  final repo = ref.read(productRepo);

  final result = await repo.toggleLikeProduct(query);
  print("like result is $result");

  return result!;
});

final userProduct =
    FutureProvider.family<List<Product>, String?>((ref, username) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getUserProduct(username: username, pageCount: 100);

  return result.reversed.toList();
});
final getProductProvider = FutureProvider.family<Product, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getProduct(id);

  return result;
});

final userFavouriteProduct = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getMyFavouriteProduct(0);

  return result.reversed.toList();
});

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});

final productProvider =
    AsyncNotifierProvider<_ProductProvider, void>(_ProductProvider.new);

class _ProductProvider extends AsyncNotifier<void> {
  late final _productRepo = ref.read(productRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  FutureOr<List<Product>> build() => [];

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      onUploadProgress: (sent, total) =>
          log('${sent / total}%', name: 'FileUpload'),
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
      ConditionsEnum? condition,
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
          name: title,
          parcelSize: parcelSize,
          discount: discount,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> updateProduct(
      {required int productId,
      String? title,
      String? desc,
      double? price,
      Enum$SizeEnum? size,
      ConditionsEnum? condition,
      int? category,
      int? subCategory,
      Enum$ParcelSizeEnum? parcelSize,
      double? discount}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      // final files = await _uploadMedia(images);
      await _productRepo.updateProduct(
        Variables$Mutation$UpdateProduct(
          productId: productId,
          category: category,
          subCategory: subCategory,
          condition: condition,
          description: desc,
          price: price,
          size: size,
          name: title,
          parcelSize: parcelSize,
          discount: discount,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
      ref.invalidate(getProductProvider(productId));
    });
  }

  Future<void> deleteProduct(int productId) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _productRepo.deleteProduct(productId);

      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }
}
