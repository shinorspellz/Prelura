import 'dart:convert';
import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';

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
  // Future<Mutation$createOffer$createOffer?> createOffer(
  //     {required int productId,
  //     required double offerPrice,
  //     String? message}) async {
  //   final response = await _client.mutate$createOffer(
  //     Options$Mutation$createOffer(
  //         variables: Variables$Mutation$createOffer(
  //       message: message,
  //       productId: productId,
  //       offerPrice: offerPrice,
  //     )),
  //   );
  //
  //   if (response.hasException) {
  //     if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
  //       final error = response.exception!.graphqlErrors.first.message;
  //
  //       throw error;
  //     }
  //     log(response.exception.toString(), name: 'OfferRepo');
  //     throw 'An error occured';
  //   }
  //
  //   if (response.parsedData == null) {
  //     log('Mising response', name: 'OfferRepo');
  //     throw 'An error occured';
  //   }
  //
  //   return response.parsedData?.createOffer;
  // }

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
}

class OfferException implements Exception {
  final String message;
  OfferException(this.message);

  @override
  String toString() => "OfferException: $message";
}
