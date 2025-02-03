import 'dart:developer';
import 'dart:io';

import 'package:graphql/client.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/core/errors/failures.dart';
import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketChannel {
  /// Constructor that initializes the websocket connection with the provided [url]
  SocketChannel(this.url, this._cache) {
    _startConnection();
  }

  /// [url] for websocket channel
  final String url;

  /// [_cache] to access all cached tokens for connection authentication
  final Box _cache;

  /// The underlying [IOWebSocketChannel]
  late IOWebSocketChannel _ioWebSocketChannel;

  /// The sink of the [IOWebSocketChannel]
  WebSocketSink get _sink => _ioWebSocketChannel.sink;

  /// The inner stream of the [IOWebSocketChannel]
  late Stream<dynamic> _innerStream;

  /// The outer stream subject that exposes the stream of the [IOWebSocketChannel]
  final _outerStreamSubject = BehaviorSubject<dynamic>();

  /// The stream exposed for external consumption
  Stream<dynamic> get stream => _outerStreamSubject.stream;

  /// Flags for connection management
  bool _isFirstRestart = false;
  bool _isRestarting = false;
  bool _isManuallyClosed = false;
  int _counter = 0;

  /// Handles reconnection when the connection is lost
  void _handleLostConnection() {
    if (!_isRestarting) {
      _isRestarting = true;
      final delay =
          _isFirstRestart ? const Duration(seconds: 3) : Duration.zero;
      Future.delayed(delay, () {
        _isFirstRestart = true;
        _isRestarting = false;
        _startConnection();
      });
    }
  }

  /// retrieves the restoken from the caches
  String? get _getToken => _cache.get('REFRESH_TOKEN');

  /// Initiates the websocket connection
  void _startConnection() async {
    try {
      final token = _getToken;
      log("Connecting to websocket at: $url $token", name: 'SocketChannel');

      _ioWebSocketChannel = IOWebSocketChannel.connect(
        url,
        headers: {
          HttpHeaders.authorizationHeader: "Token $token",
        },
      );

      log('Websocket connection in progress... at: $url',
          name: 'SocketChannel');
      await _ioWebSocketChannel.ready;
      log('Websocket connection established! at: $url', name: 'SocketChannel');

      _innerStream = _ioWebSocketChannel.stream;

      _innerStream.listen(
        (event) {
          log('$event at: $url', name: 'SocketChannel');
          _isFirstRestart = false;
          _outerStreamSubject.add(event);
        },
        onError: (error) {
          log('Websocket error: $error at: $url', name: 'SocketChannel');
          _handleLostConnection();
        },
        onDone: () {
          if (!_isManuallyClosed) {
            log('Websocket connection closed unexpectedly at: $url',
                name: 'SocketChannel');
            _handleLostConnection();
          }
        },
      );
    } catch (e, stackTrace) {
      log('Websocket connection error: $e at: $url',
          stackTrace: stackTrace, name: 'SocketChannel');
      if (_counter < 10) {
        _handleLostConnection();
        _counter++;
      }
    }
  }

  /// Sends a message through the websocket
  void sendMessage(String message) {
    log('Sending message $message at: $url', name: 'SocketChannel');
    _sink.add(
      message,
    );
  }

  /// Closes the websocket connection
  void close() {
    log('Socket Channel closed', name: 'SocketChannel');
    _isManuallyClosed = true;
    _sink.close();
  }
}

class ClientOperation<T> {
  ClientOperation(this.operate);
  final Future<QueryResult<T>> Function(GraphQLClient client) operate;
}

class GraphqlCL {
  final GraphQLClient _client;

  GraphqlCL(this._client);

  Future<T> executeGraphQL<T>({
    required ClientOperation<T> operation,
    Failure Function(OperationException)? customError,
    String? operationName,
  }) async {
    try {
      final response = await operation.operate(_client);

      if (response.hasException) {
        if (customError != null) {
          throw customError(response.exception!);
        }
        if (response.exception?.graphqlErrors.isNotEmpty ?? false) {
          final error = response.exception!.graphqlErrors.first.message;
          log(error,
              name: operationName ?? 'GraphQL',
              stackTrace: response.exception?.originalStackTrace);
          throw RequestFailure(error, response.exception?.originalStackTrace);
        }
        log(response.exception.toString(), name: operationName ?? 'GraphQL');
        throw const UnknownFailure('Unknown GraphQL error occurred');
      }

      if (response.parsedData == null) {
        throw JsonParseFailure();
      }

      return response.parsedData!;
    } catch (e, stackTrace) {
      RequestFailure(e.toString(), stackTrace);
      rethrow;
    }
  }
}
