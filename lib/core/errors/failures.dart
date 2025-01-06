import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  const Failure._();
  const factory Failure.connectionFailure(String message) = ConnectionFailure;
  const factory Failure.requestFailure(String message, [StackTrace? stackTrace]) = RequestFailure;
  const factory Failure.cacheFailure({String? message, StackTrace? stackTrace}) = CacheFailure;
  const factory Failure.jsonParseFailure([StackTrace? stackTrace]) = JsonParseFailure;

  const factory Failure.unknownFailure(String message, [StackTrace? stackTrace]) = UnknownFailure;

  @override
  String toString() {
    return when(
      connectionFailure: (e) => e,
      requestFailure: (e, _) => e,
      cacheFailure: (e, _) => e ?? 'An error occured loading cached data',
      jsonParseFailure: (_) => 'An error occured parsing data from the server',
      unknownFailure: (e, _) => e,
    );
  }
}

extension Error on Object {
  Failure get failure {
    final e = this;
    if (e is RequestFailure) {
      // logger.e(e.message, stackTrace: e.stackTrace);
      return RequestFailure(e.message, e.stackTrace);
    }
    if (e is ConnectionFailure) {
      // logger.e(e.message);
      return ConnectionFailure(e.message);
    }
    if (e is CacheFailure) {
      // logger.e(e.message);
      return CacheFailure(message: e.message);
    }

    if (e is JsonParseFailure) {
      // logger.e('Json Parse ailure', stackTrace: e.stackTrace);
      return JsonParseFailure(e.stackTrace);
    }

    if (e is UnknownFailure) {
      // logger.e(e.toString(), stackTrace: e.stackTrace);
      return UnknownFailure(e.toString(), e.stackTrace);
    }

    // logger.e(e.toString());
    return UnknownFailure(e.toString());
  }
}
