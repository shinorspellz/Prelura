import 'dart:developer';
import 'dart:ffi';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/repo/file_upload_repo.dart';

class ProductRepo {
  final GraphQLClient _client;

  ProductRepo(this._client);

  Future<void> createProduct(Variables$Mutation$CreateProduct params) async {
    final response = await _client.mutate$CreateProduct(
      Options$Mutation$CreateProduct(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<void> updateProduct(Variables$Mutation$UpdateProduct params) async {
    final response = await _client.mutate$UpdateProduct(
      Options$Mutation$UpdateProduct(
        variables: params,
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<void> deleteProduct(int id) async {
    final response = await _client.mutate$DeleteProduct(
      Options$Mutation$DeleteProduct(
        variables: Variables$Mutation$DeleteProduct(productId: id),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(error, name: 'ProductRepo');
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }
  }

  Future<Product> getProduct(int id) async {
    final response = await _client.query$Product(
      Options$Query$Product(
          variables: Variables$Query$Product(
        id: id,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return Product.fromJson(response.parsedData!.product!.toJson());
  }

  Future<List<Product>> getUserProduct({String? username, String? search, int? pageCount, int? pageNumber}) async {
    final response = await _client.query$UserProducts(
      Options$Query$UserProducts(
          variables: Variables$Query$UserProducts(
        username: username,
        search: search,
        pageCount: pageCount,
        pageNumber: pageNumber,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.userProducts!.map((x) => Product.fromJson(x!.toJson())).toList();
  }

  Future<List<Product>> getAllProducts({String? username, String? search, int? pageCount, int? pageNumber}) async {
    final response = await _client.query$AllProducts(
      Options$Query$AllProducts(
          variables: Variables$Query$AllProducts(
        search: search,
        pageCount: pageCount,
        pageNumber: pageNumber,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    print(response.parsedData!.allProducts);
    return response.parsedData!.allProducts!.map((x) => Product.fromJson(x!.toJson())).toList();
  }

  Future<List<Product>> getMyFavouriteProduct(int? pageCount) async {
    final response = await _client.query$likedProducts(
      Options$Query$likedProducts(
          variables: Variables$Query$likedProducts(
        pageCount: 100 + pageCount!,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        print(error);
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured here';
    }

    return response.parsedData!.likedProducts!.map((x) => Product.fromJson((x!.product)!.toJson())).toList();
  }

  Future<bool?> toggleLikeProduct(int productId) async {
    final response = await _client.mutate$likeProduct(
      Options$Mutation$likeProduct(
          variables: Variables$Mutation$likeProduct(
        productId: productId,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.likeProduct?.success!;
  }

  Future<List<CategoryModel>> getCategories() async {
    final response = await _client.query$Categories(
      Options$Query$Categories(),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        print(error);
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.categories!.map((x) => CategoryModel.fromJson(x!.toJson())).toList();
  }

  Future<Query$Brands> getBrands({String? search, int? pageNumber, int? pageCount}) async {
    final response = await _client.query$Brands(
      Options$Query$Brands(
          variables: Variables$Query$Brands(
        search: search,
        pageNumber: pageNumber,
        pageCount: pageCount,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!;
  }

  Future<List<Product>> similarProduct({int? productId, int? categoryId, int? pageNumber, int? pageCount}) async {
    final response = await _client.query$SimilarProducts(
      Options$Query$SimilarProducts(
          variables: Variables$Query$SimilarProducts(
        productId: productId,
        categoryId: categoryId,
        pageNumber: pageNumber,
        pageCount: pageCount,
      )),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw error;
      }
      log(response.exception.toString(), name: 'ProductRepo');
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }

    return response.parsedData!.similarProducts!.map((x) => Product.fromJson((x!).toJson())).toList();
  }
}
