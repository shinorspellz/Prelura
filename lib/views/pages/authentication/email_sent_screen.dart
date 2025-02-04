import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/assets.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/auth/auth_controller.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../widgets/app_button_with_loader.dart';

@RoutePage()
class EmailSentScreen extends ConsumerWidget {
  const EmailSentScreen(
      {super.key,
      required this.email,
      required this.username,
      required this.password,
      this.onLoginResult});
  final String email;
  final String username;
  final String password;
  final void Function(bool isLoggedIn)? onLoginResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 32),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                AnimationAssets.email,
                height: 100,
                width: 100,
                // repeat: false,
              ),
              24.verticalSpacing,
              Align(
                alignment: Alignment.center,
                child: Text(
                  "An email was sent to \n ${email} \n for account verification",
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodyMedium?.copyWith(
                      fontSize: getDefaultSize(size: 16),
                      fontWeight: FontWeight.w500),
                ),
              ),
              44.verticalSpacing,
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        height: 90,
        child: PreluraButtonWithLoader(
          // padding: EdgeInsets.all(16),
          showLoadingIndicator: ref.watch(authProvider).isLoading,
          onPressed: () async {
            await ref.read(authProvider.notifier).login(
                  username.trim(),
                  password.trim(),
                );
            ref.read(authProvider).whenOrNull(
              error: (e, _) {
                context.alert(e.toString());
                log("$e");
                log("$_");
              },
              data: (_) {
                if (onLoginResult == null) {
                  context.router.replaceAll([const AuthRoute()]);
                  log('auth with login result');
                  return;
                }
                onLoginResult?.call(true);
              },
            );
          },
          buttonTitle: "CONTINUE TO LOGIN",
        ),
      ),
    );
  }
}
