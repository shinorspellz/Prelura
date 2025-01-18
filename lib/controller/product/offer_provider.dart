import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';
import 'package:prelura_app/model/chat/offer_info.dart';
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
      offerState: data['offerState'] ?? state.offerState,
      activeOffer: data['activeOffer'] ?? state.activeOffer,
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
        final Mutation$createOffer$createOffer$data$offer$product$seller?
            userInfo = res.data!.offer!.product.seller;
        context.router.replace(ChatRoute(
          id: res.data!.conversationId.toString(),
          username: userInfo?.username ?? "",
          avatarUrl: userInfo?.thumbnailUrl ?? "",
          isOffer: true,
        ));
      } else {
        context.alert(res?.message ?? "Failed to create offer.");
      }
      updateOfferState({
        "processingType": "createOffer",
      });
    } on OfferException catch (e) {
      log('Offer exception: $e');
      updateOfferState({
        "processingType": "createOffer",
      });
      context.alert(e.message);
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
    double? offerPrice,
    required Enum$OfferActionEnum actionType,
  }) async {
    try {
      updateOfferState({
        "processingType": "respondToOffer",
        "isProcessing": true,
      });
      String? offerId = state.activeOffer?.offer?.children?.firstOrNull?.id ??
          state.activeOffer?.offer?.id;
      final Mutation$RespondToOffer$respondToOffer? res =
          await offerRepo.respondToOffer(
        offerId: int.parse(offerId!),
        offerPrice: offerPrice,
        actionType: actionType,
      );
      if (res != null && res.success!) {
        context.alert('Offer ${actionType.name} successfully');
        OfferInfo offerInfo = OfferInfo.fromJson(res.data!.offer!.toJson());
        ConversationModel? newConversation = state.activeOffer;
        newConversation = newConversation?.copyWith(offer: offerInfo);
        updateOfferState({
          "offerState": actionType.name,
          "activeOffer": newConversation,
        });
      } else {
        context.alert(res?.message ?? "Failed to create offer.");
      }
      updateOfferState({
        "processingType": "respondToOffer",
      });
    } on OfferException catch (e) {
      log('Offer exception: $e');
      updateOfferState({
        "processingType": "respondToOffer",
      });
      context.alert(e.message);
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
  final String? offerState;
  final ConversationModel? activeOffer;
  final Set<String> processingTypes;

  OfferState({
    required this.isProcessing,
    required this.processingTypes,
    this.offerState,
    this.activeOffer,
  });

  OfferState copyWith({
    bool? isProcessing,
    Set<String>? processingTypes,
    String? offerState,
    ConversationModel? activeOffer,
  }) {
    return OfferState(
      isProcessing: isProcessing ?? this.isProcessing,
      processingTypes: processingTypes ?? this.processingTypes,
      offerState: offerState ?? this.offerState,
      activeOffer: activeOffer ?? this.activeOffer,
    );
  }
}
