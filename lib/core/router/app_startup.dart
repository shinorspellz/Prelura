import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/hex_color.dart';
import 'package:prelura_app/modules/views/pages/auth_page.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/res/images.dart';

@RoutePage()
class AppStartupPage extends ConsumerWidget {
  const AppStartupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen(appStartUpProvider, (p, n) {
    //   log('Navigated to scaffolde');
    //   context.pushRoute(const NavBarScaffold());
    // });

    return ref.watch(appStartUpProvider).when(
          skipLoadingOnRefresh: false,
          data: (_) {
            // Navigate to the next page when data is available
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.replaceAll([
                const AuthRoute(),
              ]);
            });
            return const _StartUpLoadingWidget();
          },
          error: (e, _) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.replaceAll([
                const AuthRoute(),
              ]);
            });
            return const _StartUpLoadingWidget();
            //   return _StartUpErrorWidget(
            //   message: e.toString(),
            //   onRetry: () => ref.invalidate(appStartUpProvider),
            // );
          },
          loading: () => const _StartUpLoadingWidget(),
        );
  }
}

class _StartUpErrorWidget extends StatelessWidget {
  const _StartUpErrorWidget({super.key, this.onRetry, required this.message});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          message,
          textAlign: TextAlign.center,
        ),
        5.verticalSpacing,
        TextButton.icon(
          onPressed: onRetry,
          label: const Text('Retry'),
          icon: const Icon(Icons.refresh_rounded),
        ),
      ],
    )));
  }
}

class _StartUpLoadingWidget extends StatelessWidget {
  const _StartUpLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isDarkMode ? "0d0f12".fromHex : null,
      body: Column(
        children: [
          const Spacer(),
          55.verticalSpacing,
          Transform.scale(
            scale: 0.75,
            child: Image.asset(PreluraIcons.splash),
          ),
          const Spacer(),
          SafeArea(
            top: false,
            child: Transform.scale(
              scale: 1.2,
              child: const LoadingWidget(),
            ),
          ),
          10.verticalSpacing,
        ],
      ),
    );
  }
}
