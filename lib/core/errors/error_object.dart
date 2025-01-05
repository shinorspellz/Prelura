import 'failures.dart';

class ErrorObject {
  final String title;
  final String message;
  final int? code;
  final StackTrace? stackTrace;

  ErrorObject({required this.title, required this.message, this.code, this.stackTrace});

  static ErrorObject mapFailures(Failure failure) => failure.when(
      connectionFailure: (message) => ErrorObject(title: 'Connection Failure', message: message),
      cacheFailure: (message, stackTrace) => ErrorObject(title: 'Cache Failure', message: message ?? 'An error occured loading cached data', stackTrace: stackTrace),
      requestFailure: (message, [StackTrace? stackTrace]) => ErrorObject(title: 'Request Failure', message: message, stackTrace: stackTrace),
      unknownFailure: (message, [StackTrace? stackTrace]) => ErrorObject(title: 'Unknown Failure', message: 'An unknown error occured', stackTrace: stackTrace),
      jsonParseFailure: ([StackTrace? stackTrace]) => ErrorObject(title: 'Json Parse Failure', message: 'An error occured parsing data from the server', stackTrace: stackTrace));

  @override
  String toString() => message;
}
