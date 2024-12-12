import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/repo/auth_repo/auth_repo.dart';
import 'package:prelura_app/modules/repo/file_upload_repo.dart';
import 'package:prelura_app/modules/repo/followers_repo.dart';
import 'package:prelura_app/modules/repo/product/product_repo.dart';
import 'package:prelura_app/modules/repo/user/user_repo.dart';

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
    // logger.e(e.toString(), stackTrace: st);
  }

  return container;
}

final appStartUpProvider = FutureProvider((ref) async {
  if (ref.read(authStateProvider).requireValue) {
    await Future.wait([
      ref.read(userProvider.future),
      ref.read(allProductProvider.future),
    ]);

    // custom delay added for splash
    await Future.delayed(const Duration(seconds: 3));
  }
});

final router = Provider((ref) => AppRouter(ref));

/// Default [GraphQLClient] for all basic mutation & quries.
final graphqlClient = Provider((ref) {
  final cachedBox = ref.read(hive).requireValue;

  final token = cachedBox.get('AUTH_TOKEN');

  AuthLink authLink = AuthLink(getToken: () {
    if (token == null) return null;
    return 'Bearer $token';
  });

  HttpLink httpLink = HttpLink(
    'https://prelura.com/graphql/',
    defaultHeaders: {HttpHeaders.acceptHeader: 'application/json'},
  );

  Link link = authLink.concat(httpLink);

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
  (ref) =>
      AuthRepo(ref.watch(graphqlClient), ref.watch(hive).requireValue, ref),
);

/// Product Repository for any dependency
final productRepo = Provider(
  (ref) => ProductRepo(ref.watch(graphqlClient)),
);

/// Product Repository for any dependency
final userRepo = Provider(
  (ref) => UserRepo(ref.watch(graphqlClient)),
);

final followerRepo = Provider(
  (ref) => FollowerRepo(ref.watch(graphqlClient)),
);

final followingRepo = Provider(
  (ref) => FollowingRepo(ref.watch(graphqlClient)),
);

/// File Media upload repository for any dependency
final fileUploadRepo = Provider(
  (ref) => FileUploadRepo(ref.watch(hive).requireValue),
);
