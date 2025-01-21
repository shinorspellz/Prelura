import 'dart:convert';
import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/queries.graphql.dart';
import 'package:prelura_app/model/chat/conversation_model.dart';

class ChatRepo {
  final GraphQLClient _client;

  ChatRepo(this._client);

  Future<List<ConversationModel>> getConversation() async {
    final response =
        await _client.query$Conversations(Options$Query$Conversations());

    if (response.hasException) {
      if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
        final error = response.exception!.graphqlErrors.first.message;
        log(response.exception.toString(), name: 'ProductRepo');
        throw error;
      }
      throw 'An error occured';
    }

    if (response.parsedData == null) {
      log('Mising response', name: 'ProductRepo');
      throw 'An error occured';
    }
    log(":::THE GEN MESSAGES ARE :::::: ${jsonEncode(response.parsedData!.toJson())}");
    return response.parsedData!.conversations!
        .map((x) => ConversationModel.fromJson(x!.toJson()))
        .toList();
  }

  Future<Query$Conversation> getMessages(
      {required String id, int? pageCount, int? pageNumber}) async {
    final response =
        await _client.query$Conversation(Options$Query$Conversation(
      variables: Variables$Query$Conversation(
        id: id,
        pageCount: pageCount,
        pageNumber: pageNumber,
      ),
    ));

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
    log(":::THE MESSAGES ARE :::::: ${jsonEncode(response.parsedData!.toJson())}");

    return response.parsedData!;
  }

  Future<ConversationModel> createChat(String recipient) async {
    final response = await _client.mutate$CreateChat(
      Options$Mutation$CreateChat(
          variables: Variables$Mutation$CreateChat(recipient: recipient)),
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
    log("::::The conversion response is ::::: ${jsonEncode(response.parsedData!.createChat!.chat!.toJson())}");

    return ConversationModel.fromJson(
        response.parsedData!.createChat!.chat!.toJson());
  }

  Future<void> deleteMessage(int messageId) async {
    final response = await _client.mutate$DeleteMessage(
      Options$Mutation$DeleteMessage(
          variables: Variables$Mutation$DeleteMessage(
        messageId: messageId,
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
  }

  Future<void> deleteConversation(int id) async {
    final response = await _client.mutate$DeleteConversation(
      Options$Mutation$DeleteConversation(
          variables: Variables$Mutation$DeleteConversation(
        conversationId: id,
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
  }

  Future<void> readMessages(List<int> ids) async {
    final response = await _client.mutate$UpdateReadMessages(
      Options$Mutation$UpdateReadMessages(
          variables: Variables$Mutation$UpdateReadMessages(
        messageIds: ids,
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
  }
}
