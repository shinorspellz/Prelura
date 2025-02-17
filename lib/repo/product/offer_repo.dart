import 'dart:convert';
import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

import '../../core/graphql/__generated/queries.graphql.dart';
import '../../model/product/order/user_order.dart';

class OfferRepo {
  final GraphQLClient _client;
  OfferRepo(this._client);

  Future<Mutation$createOffer$createOffer?> createOffer({
    required List<int> productIds,
    required double offerPrice,
    String? message,
  }) async {
    final response = await _client.mutate$createOffer(
      Options$Mutation$createOffer(
        variables: Variables$Mutation$createOffer(
          message: message,
          productIds: productIds,
          offerPrice: offerPrice,
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw OfferException(error);
      }
      log(response.exception.toString(), name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'OfferRepo');
      throw OfferException('An error occurred');
    }

    log("::::Offer creationInfo::: ${jsonEncode(response.parsedData?.createOffer?.toJson())}");
    return response.parsedData?.createOffer;
  }

  ///
  ///
  ///
  Future<Mutation$CreateOrder$createOrder?>? createOrder({
    int? productId,
    List<int>? productIds,
    double? shippingFee,
    required Input$DeliveryDetailsInputType deliveryDetails,
  }) async {
    log("::::Order creationInfo::: ${deliveryDetails.toJson().toString()}");
    log("::::Order creationInfo::: ${productId.toString()}");
    final response = await _client.mutate$CreateOrder(
      Options$Mutation$CreateOrder(
        variables: Variables$Mutation$CreateOrder(
          productId: productId,
          productIds: productIds,
          shippingFee: shippingFee,
          deliveryDetails: deliveryDetails,
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw OfferException(error);
      }
      log(response.exception.toString(), name: 'OfferRepo-Order');
      throw OfferException('An error occurred');
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'OfferRepo-Order');
      throw OfferException('An error occurred');
    }

    log("::::Order creationInfo::: ${jsonEncode(response.parsedData?.createOrder?.toJson())}");
    return response.parsedData?.createOrder;
  }

  Future<Mutation$RespondToOffer$respondToOffer?> respondToOffer(
      {required int offerId,
      double? offerPrice,
      required Enum$OfferActionEnum actionType}) async {
    final response = await _client.mutate$RespondToOffer(
      Options$Mutation$RespondToOffer(
          variables: Variables$Mutation$RespondToOffer(
        action: actionType,
        offerId: offerId,
        offerPrice: offerPrice,
      )),
    );
    log("::::The payload is :::    'action:' $actionType ::: 'offerId:' $offerId ::: 'offerPrice:' $offerPrice,");
    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        throw OfferException(error);
      }
      log(response.exception.toString(), name: 'OfferRepo respond To offer');
      throw OfferException('An error occurred');
    }

    if (response.parsedData == null) {
      log('Missing response', name: 'OfferRepo respond to offer');
      throw OfferException('An error occurred');
    }
    log("::::The updated offer returned data :::  ${jsonEncode(response.parsedData?.respondToOffer?.toJson())}");
    return response.parsedData?.respondToOffer;
  }

  Future<UserOrderResponse> getUserOrders({
    int? pageCount,
    int? pageNumber,
    Input$OrderFiltersInput? filters,
  }) async {
    final response = await _client.query$UserOrders(
      Options$Query$UserOrders(
          variables: Variables$Query$UserOrders(
        pageCount: pageCount,
        pageNumber: pageNumber,
        filters: filters,
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

    log(":::::The user orders info is:: ${jsonEncode(response.parsedData!.toJson())}");

    return UserOrderResponse.fromJson(response.parsedData!.toJson());
  }
}

class OfferException implements Exception {
  final String message;
  OfferException(this.message);

  @override
  String toString() => "OfferException: $message";
}
