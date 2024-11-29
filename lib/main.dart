import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/res/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    ProviderScope(
      // Wrap the app in a ProviderScope for Riverpod
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final router = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp.router(
          title: 'Prelura App',
          debugShowCheckedModeBanner: false,
          theme: PreluraTheme.lightMode,
          darkTheme: PreluraTheme.darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: router.config(
            navigatorObservers: () => [
              AppRouterObserver(ref),
            ],
          ),
          builder: (context, child) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus(); // Dismiss the keyboard
              },
              child: child,
            );
          },
        );
      },
    );
  }
}
