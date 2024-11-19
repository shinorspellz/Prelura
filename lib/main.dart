import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/res/theme.dart';
import 'package:prelura_app/res/typography/typography.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp.router(
          title: 'Prelura App',
          debugShowCheckedModeBanner: false,
          theme: PreluraTheme.lightMode, // Use the light theme here
          darkTheme: PreluraTheme.darkTheme, // Set dark theme as well
          themeMode: ThemeMode.system,
          routerConfig: router.config(
            navigatorObservers: () => [
              AppRouterObserver(),
            ],
          ),
        );
      },
    );
  }
}
