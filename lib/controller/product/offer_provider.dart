import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/repo/product/offer_repo.dart';

class OfferNotifier extends StateNotifier<OfferState> {
  final OfferRepo offerRepo;
  final Ref ref;

  OfferNotifier(this.ref, this.offerRepo)
      : super(OfferState(
          isProcessing: false,
          processingTypes: {},
        ));

  void updateOfferState(Map<String, dynamic> data) {
    // Helper function to handle list updates
    log('Before Update: ${state.processingTypes}');
    Set<String> updateList(Set<String>? currentList, dynamic newValue) {
      if (newValue == null) return currentList ?? {};
      final updatedList = Set<String>.from(currentList ?? {});
      updatedList.contains(newValue)
          ? updatedList.remove(newValue)
          : updatedList.add(newValue);
      return updatedList;
    }

    log("::::The available keys ::: ${data.keys}");
    log("::::The available keys ::: ${data["processingType"]}");

    final updatedProcessingType = data.containsKey('processingType')
        ? updateList(state.processingTypes, data['processingType'])
        : state.processingTypes;

    // Update the state
    state = state.copyWith(
      isProcessing: data['isProcessing'] ?? state.isProcessing,
      processingTypes: updatedProcessingType,
    );
    log('After Update: ${state.processingTypes}');
  }

  createOffer(
    BuildContext context, {
    required int productId,
    required double offerPrice,
    String? message,
  }) async {
    try {
      updateOfferState({
        "processingType": "createOffer",
        "isProcessing": true,
      });
      final Mutation$createOffer$createOffer? res = await offerRepo.createOffer(
        productId: productId,
        offerPrice: offerPrice,
        message: message,
      );
      if (res != null && res.success!) {
        context.alert('Offer created successfully');
        //Navigating to the chat room
        Mutation$createOffer$createOffer$offer$product$seller? userInfo =
            res.offer!.product.seller;
        // context.router.push(ChatRoute(
        //   id: ,
        //   username: userInfo?.username ?? "",
        //   avatarUrl: userInfo?.thumbnailUrl ?? "",
        // ));
      } else {
        context.alert(res?.message ?? "Failed to create offer.");
      }
      updateOfferState({
        "processingType": "createOffer",
      });
    } on Exception catch (e) {
      print('Error creating offer: $e');
      updateOfferState({
        "processingType": "createOffer",
      });
      // return false;
    }
  }

  respondToOffer(
    BuildContext context, {
    required int offerId,
    double? offerPrice,
    required Enum$OfferActionEnum actionType,
  }) async {
    try {
      updateOfferState({
        "processingType": "respondToOffer",
        "isProcessing": true,
      });
      final Mutation$RespondToOffer$respondToOffer? res =
          await offerRepo.respondToOffer(
        offerId: offerId,
        offerPrice: offerPrice,
        actionType: actionType,
      );
      if (res != null && res.success!) {
        context.alert('Offer ${actionType.name} successfully');
      } else {
        context.alert(res?.message ?? "Failed to create offer.");
      }
      updateOfferState({
        "processingType": "respondToOffer",
      });
    } on Exception catch (e) {
      print('Error creating offer: $e');
      updateOfferState({
        "processingType": "respondToOffer",
      });
      // return false;
    }
  }
}

final offerProvider = StateNotifierProvider<OfferNotifier, OfferState>((ref) {
  final repoProvider = ref.read(offerRepoProvider);
  return OfferNotifier(ref, repoProvider);
});

class OfferState {
  final bool isProcessing;
  final Set<String> processingTypes;

  OfferState({
    required this.isProcessing,
    required this.processingTypes,
  });

  OfferState copyWith({
    bool? isProcessing,
    Set<String>? processingTypes,
  }) {
    return OfferState(
      isProcessing: isProcessing ?? this.isProcessing,
      processingTypes: processingTypes ?? this.processingTypes,
    );
  }
}
