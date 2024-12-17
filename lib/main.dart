import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/firebase_options.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/res/theme.dart';
import 'package:sizer/sizer.dart';

import 'modules/controller/theme_notifier.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: '.env');
  await Hive.initFlutter();
  await Hive.openBox('settings');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    UncontrolledProviderScope(
      container: await initializeDependencies(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final themeMode = ref.watch(themeNotifierProvider);
    // Remove splash screen after determining auth state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp.router(
          title: 'Prelura App',
          debugShowCheckedModeBanner: false,
          theme: PreluraTheme.lightMode,
          darkTheme: PreluraTheme.darkTheme,
          themeMode: themeMode,
          routerConfig: ref.watch(router).config(
                //this line of code listens to the authstate provider
                // and anytime the authstate changes the AutoRoute Guard is reevaluted
                // and refreshed to update the route to an authenticated or unauthenicated state
                reevaluateListenable: ReevaluateListenable.stream(
                  // still trying to figure out a way to listen to the provider instead of the
                  // stream since its deprecated.
                  ref.watch(authStateProvider.stream),
                ),
                navigatorObservers: () => [
                  AppRouterObserver(ref),
                ],
              ),
          builder: (context, child) {
            return child!;
          },
        );
      },
    );
  }
}
