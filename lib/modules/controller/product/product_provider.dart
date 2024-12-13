import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';

// final allProductProvider = FutureProvider((ref) async {
//   log('Triggered All Product Provider Getting Product.....');
//   final repo = ref.watch(productRepo);

//   final result = await repo.getAllProducts(pageCount: 100);
//   log('Got All Product....');

//   return result.reversed.toList();
// });

final searchProductProvider =
    FutureProvider.family<List<Product>, String?>((ref, query) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getAllProducts(search: query);

  return result.allProducts!.map((e) => Product.fromJson(e!.toJson())).toList();
});

final toggleLikeProductProvider =
    FutureProvider.autoDispose.family<bool, int>((ref, query) async {
  final repo = ref.read(productRepo);

  final result = await repo.toggleLikeProduct(query);

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

final userFavouriteProduct = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getMyFavouriteProduct(0);

  return result.reversed.toList();
});

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});

final similarProductsProvider =
    FutureProvider.family<List<Product>, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.similarProduct(productId: id);

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

  Future<void> createProduct({
    required String title,
    required String desc,
    required double price,
    required List<File> images,
    required Enum$SizeEnum size,
    ConditionsEnum? condition,
    required int category,
    required int subCategory,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
  }) async {
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
          brand: brandId,
          color: color,
          materials: materials,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> updateProduct({
    required int productId,
    String? title,
    String? desc,
    double? price,
    Enum$SizeEnum? size,
    ConditionsEnum? condition,
    int? category,
    int? subCategory,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
  }) async {
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
          brand: brandId,
          color: color,
          materials: materials,
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

  Future<void> likeProduct(int productId, bool isLiked, likeCount) async {
    if (ref.read(getProductProvider(productId)).hasValue) {
      // ref.read(getProductProvider(productId)).value?.userLiked = isLiked;
      // ref.read(getProductProvider(productId)).value?.likes = likeCount;
    }
    await _productRepo.toggleLikeProduct(productId);

    ref.invalidate(getProductProvider(productId));
    ref.invalidate(allProductProvider);
    ref.invalidate(userFavouriteProduct);
  }
}

final colorsProvider = Provider((ref) {
  final colorOptions = {
    "Black": Colors.black,
    "Brown": Colors.brown,
    "Grey": Colors.grey,
    "Beige": const Color(0xFFF5F5DC),
    "Pink": Colors.pink,
    "Purple": Colors.purple,
    "Red": Colors.red,
    "Yellow": Colors.yellow,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Orange": Colors.orange,
  };

  return colorOptions;
});

final filterProductByPriceProvider = AsyncNotifierProvider.family<
    _FilteredProductController,
    List<Product>,
    double>(_FilteredProductController.new);

class _FilteredProductController
    extends FamilyAsyncNotifier<List<Product>, double> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  double _price = 15;

  @override
  Future<List<Product>> build(double priceLimit) async {
    state = const AsyncLoading();
    _price = priceLimit;
    _currentPage = 1;
    await _getProducts(pageNumber: _currentPage, price: priceLimit);
    return state.value!;
  }

  Future<void> _getProducts({required double price, int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.filterProductByPrice(
      price: price,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.filterProductsByPriceTotalNumber!;

    final newState =
        result.filterProductsByPrice!.map((e) => Product.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getProducts(
        price: _price,
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final searchBrand = FutureProvider.family.autoDispose<List<Brand>, String>(
  (ref, query) async {
    final repo = ref.watch(productRepo);

    final result = await repo.getBrands(search: query);

    return result.brands!.map((e) => Brand.fromJson(e!.toJson())).toList();
  },
);

final allProductProvider = AsyncNotifierProvider.family<_AllProductController, List<Product>, String?>(_AllProductController.new);

class _AllProductController extends FamilyAsyncNotifier<List<Product>, String?> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;
  String? _query;

  @override
  Future<List<Product>> build(String? query) async {
    state = const AsyncLoading();
    _currentPage = 1;
    _query = query;
    await _getProducts(query: query, pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getProducts({String? query, int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.getAllProducts(
      search: query,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.allProductsTotalNumber!;

    final newState =
        result.allProducts!.map((e) => Product.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getProducts(
        query: _query,
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}
