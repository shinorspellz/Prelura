import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/custom_widget.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../core/utils/assets.dart';
import '../../widgets/app_button_with_loader.dart';

@RoutePage()
class VerifyUserScreen extends ConsumerStatefulWidget {
  final String token;

  const VerifyUserScreen({
    super.key,
    @PathParam('token') required this.token,
  });

  @override
  ConsumerState<VerifyUserScreen> createState() => _VerifyUserScreenState();
}

class _VerifyUserScreenState extends ConsumerState<VerifyUserScreen> {
  bool? isSuccess;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      _runVerificationMutation();
    });
  }

  void _runVerificationMutation() async {
    try {
      await ref.read(authProvider.notifier).verifyAccount(token: widget.token);
    } catch (e) {
      log("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ref.read(authProvider).when(
        data: (data) {
          return Container(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 32),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    AnimationAssets.account,
                    height: 100,
                    width: 100,
                    // repeat: false,
                  ),
                  24.verticalSpacing,
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Congratulations\n  your account has been verified",
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
          );
        },
        error: (e, _) {
          log("Error: $e");
        },
        loading: () {
          return CircularProgressIndicator();
        },
      )),
      // bottomSheet: Container(
      //     padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      //     height: 90,
      //     child: PreluraButtonWithLoader(
      //       // padding: EdgeInsets.all(16),
      //       showLoadingIndicator: ref.watch(authProvider).isLoading,
      //       onPressed: () async {
      //         await ref.read(authProvider.notifier).login(
      //               username.trim(),
      //               password.trim(),
      //             );
      //         ref.read(authProvider).whenOrNull(
      //           error: (e, _) {
      //             context.alert(e.toString());
      //             log("$e");
      //             log("$_");
      //           },
      //           data: (_) {
      //             if (onLoginResult == null) {
      //               context.router.replaceAll([const AuthRoute()]);
      //               log('auth with login result');
      //               return;
      //             }
      //             onLoginResult?.call(true);
      //           },
      //         );
      //       },
      //       buttonTitle: "CONTINUE TO LOGIN",
      //     ))
    );
  }
}
