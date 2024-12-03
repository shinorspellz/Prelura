import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  const Failure._();

  const factory Failure.connectionFailure(String message) = ConnectionFailure;
  const factory Failure.requestFailure(String message, int code, [StackTrace? stackTrace]) = RequestFailure;
  const factory Failure.cacheFailure({String? message}) = CacheFailure;
  const factory Failure.jsonParseFailure([StackTrace? stackTrace]) = JsonParseFailure;

  const factory Failure.unknownFailure(String message, [StackTrace? stackTrace]) = UnknownFailure;
}

extension Error on Object {
  Failure get failure {
    final e = this;
    if (e is RequestFailure) {
      // logger.e(e.message, stackTrace: e.stackTrace);
      return RequestFailure(e.message, e.code, e.stackTrace);
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