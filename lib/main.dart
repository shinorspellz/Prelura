import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/firebase_options.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

// import 'package:uni_links3/uni_links.dart';

import 'controller/theme_notifier.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: '.env');
  await Hive.initFlutter();
  await Hive.openBox('settings');
  Stripe.publishableKey =
      'pk_test_51QZLUu2LCwCAAIPiQaNscHb0rfE53OokrEEboDTJWn6BxMsGTib5S6u4rMflxm7RWnSK213nOeUj5uTYcpBykNmB00MDeN70RI';
  await Stripe.instance.applySettings();

  prefs = await SharedPreferences.getInstance();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) async {
    runApp(
      UncontrolledProviderScope(
        container: await initializeDependencies(),
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    // _initDeepLinkListener();
    
  }

  // void _initDeepLinkListener() async {
  //   uriLinkStream.listen((Uri? uri) {
  //     if (uri != null) {
  //       debugPrint('Deep link received: ${uri.toString()}');
  //       _handleDeepLink(uri);
  //     }
  //   }, onError: (err) {
  //     debugPrint('Deep Link Error: $err');
  //   });
  // }

  // void _handleDeepLink(Uri uri) {
  //   String? id = uri.queryParameters['token'];
  //   if (id != null) {
  //     log("$id");
  //     // context.router.push(VerifyUserRoute(token: id));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    HelperFunction.genRef = ref;
    final themeMode = ref.watch(themeNotifierProvider);
    ref.watch(notificationProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp.router(
          title: 'Prelura App',
          debugShowCheckedModeBanner: false,
          theme: PreluraTheme.lightMode,
          darkTheme: PreluraTheme.darkTheme.copyWith(textTheme: TextTheme()),
          themeMode: themeMode,
          routerConfig: ref.watch(router).config(
                // deepLinkBuilder: (deepLink) {
                //   debugPrint('Received deep link: ${deepLink.path}');
                //   return deepLink;
                // },
                //this line of code listens to the authstate provider
                // and anytime the authstate changes the AutoRoute Guard is reevaluted
                // and refreshed to update the route to an authenticated or unauthenicated state
                reevaluateListenable: ReevaluateListenable.stream(
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
