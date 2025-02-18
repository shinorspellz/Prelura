import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';

import '../../widgets/app_bar.dart';

@RoutePage()
class PaymentSuccessfulScreen extends ConsumerWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Delay navigation after the first frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        context.router
            .replaceNamed('/your-next-screen'); // Change to your actual route
      });
    });

    return Scaffold(
        body: Center(
            child:
                Text("Successful", style: context.theme.textTheme.bodyMedium)));
  }
}
