import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/repo/auth_repo/auth_repo.dart';

Future<ProviderContainer> initializeDependencies() async {
  final container = ProviderContainer();
  try {
    container.read(_graphqlClient);
    await Future.wait(
      [
        container.read(hive.future),
        // container.read(_rHttp.future),
      ],
    );
    await container.read(authStateProvider.future);
  } catch (e, st) {
    log(e.toString(), name: 'Bootstrap', stackTrace: st);
    // logger.e(e.toString(), stackTrace: st);
  }

  return container;
}

final router = Provider((ref) => AppRouter(ref));

final _graphqlClient = Provider((ref) {
  final httpLink = HttpLink(
    "https://prelura-app.vercel.app/graphql/",
  );

  GraphQLClient client = GraphQLClient(
    queryRequestTimeout: const Duration(minutes: 1),
    cache: GraphQLCache(store: InMemoryStore()),
    link: httpLink,
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
  (ref) => AuthRepo(
    ref.watch(_graphqlClient),
    ref.watch(hive).requireValue,
  ),
);
