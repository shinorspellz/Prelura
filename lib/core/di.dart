import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/controller/chat/conversations_provider.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/repo/auth_repo/auth_repo.dart';
import 'package:prelura_app/modules/repo/chat_repo/chat_repo.dart';
import 'package:prelura_app/modules/repo/file_upload_repo.dart';
import 'package:prelura_app/modules/repo/network_repo.dart';
import 'package:prelura_app/modules/repo/product/payment_repo.dart';
import 'package:prelura_app/modules/repo/product/product_repo.dart';
import 'package:prelura_app/modules/repo/user/user_repo.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

import '../modules/controller/notification_provider.dart';
import '../modules/repo/notifications_repo.dart';

Future<ProviderContainer> initializeDependencies() async {
  final container = ProviderContainer();
  try {
    await Future.wait(
      [
        container.read(hive.future),
        // container.read(_rHttp.future),
      ],
    );
    container.read(graphqlClient);
    await container.read(authStateProvider.future);
  } catch (e, st) {
    log(e.toString(), name: 'Bootstrap', stackTrace: st);
  }

  return container;
}

final appStartUpProvider = FutureProvider((ref) async {
  if (ref.read(authStateProvider).requireValue) {
    await Future.wait([
      ref.read(userProvider.future),
      ref.read(allProductProvider(null).future),
      ref.read(brandsProvider.future),
      ref.read(categoryProvider.future),
      ref.read(notificationProvider.future),
    ]);
    ref.read(conversationProvider.future);

    // custom delay added for splash
    await Future.delayed(const Duration(seconds: 2));
  }
});

final router = Provider((ref) => AppRouter(ref));

/// Default [GraphQLClient] for all basic mutation & quries.
final graphqlClient = Provider((ref) {
  final cachedBox = ref.read(hive).requireValue;

  final prettyLogger = TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
    printRequestData: false,
    printRequestHeaders: false,
    printResponseHeaders: false,
    printResponseMessage: false,
  ));

  // dio setup
  final dio = Dio()..interceptors.add(prettyLogger);

  final token = cachedBox.get('AUTH_TOKEN');

  AuthLink authLink = AuthLink(getToken: () {
    if (token == null) return null;
    return 'Bearer $token';
  });

  final link = Link.from([
    authLink,
    DioLink(
      "https://prelura.com/graphql/",
      client: dio,
      defaultHeaders: {HttpHeaders.acceptHeader: 'application/json'},
    ),
  ]);

  GraphQLClient client = GraphQLClient(
    defaultPolicies: DefaultPolicies(
      query: Policies(
        cacheReread: CacheRereadPolicy.ignoreAll,
        fetch: FetchPolicy.noCache,
      ),
    ),
    queryRequestTimeout: const Duration(minutes: 3),
    cache: GraphQLCache(store: InMemoryStore()),
    link: link,
  );

  return client;
});

/// Upload [GraphQLClient] for upload mutations basic mutation & quries.
final graphqUploadlClient = Provider((ref) {
  final cachedBox = ref.read(hive).requireValue;

  final prettyLogger = TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
    printRequestData: false,
    printRequestHeaders: false,
    printResponseHeaders: false,
    printResponseMessage: false,
  ));

  // dio setup
  final dio = Dio()..interceptors.add(prettyLogger);

  final token = cachedBox.get('AUTH_TOKEN');

  AuthLink authLink = AuthLink(getToken: () {
    if (token == null) return null;
    return 'Bearer $token';
  });

  final link = Link.from([
    authLink,
    DioLink(
      "https://prelura.com/graphql/uploads/",
      client: dio,
      defaultHeaders: {HttpHeaders.acceptHeader: 'application/json'},
    ),
  ]);

  GraphQLClient client = GraphQLClient(
    defaultPolicies: DefaultPolicies(
      query: Policies(
        cacheReread: CacheRereadPolicy.ignoreAll,
        fetch: FetchPolicy.noCache,
      ),
    ),
    queryRequestTimeout: const Duration(minutes: 1),
    cache: GraphQLCache(store: InMemoryStore()),
    link: link,
  );

  return client;
});

final hive = FutureProvider((ref) async {
  await Hive.initFlutter();

  final hive = await Hive.openBox('cache');

  return hive;
});

/// Autthentication Repository for any dependency
final authRepo = Provider(
  (ref) => AuthRepo(ref.watch(graphqlClient), ref.watch(hive).requireValue, ref),
);

/// Product Repository for any dependency
final productRepo = Provider(
  (ref) => ProductRepo(ref.watch(graphqlClient)),
);

/// Product Repository for any dependency
final userRepo = Provider(
  (ref) => UserRepo(ref.watch(graphqlClient)),
);

final networkRepo = Provider(
  (ref) => NetworkRepo(ref.watch(graphqlClient)),
);

/// File Media upload repository for any dependency
final fileUploadRepo = Provider(
  (ref) => FileUploadRepo(ref.watch(graphqUploadlClient)),
);

/// File Media upload repository for any dependency
final chatRepo = Provider(
  (ref) => ChatRepo(ref.watch(graphqlClient)),
);

final notificationRepo = Provider(
  (ref) => NotificationRepo(ref.watch(graphqlClient)),
);

final paymentRepo = Provider(
  (ref) => PaymentRepo(ref.watch(graphqlClient)),
);
