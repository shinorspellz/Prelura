import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/custom_widget.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/user/user_controller.dart';
import '../../../core/utils/assets.dart';
import '../../../res/colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/pinfeild_widget.dart';

@RoutePage()
class VerifyUserScreen extends ConsumerStatefulWidget {
  final String email;
  final bool inAppVerification;
  const VerifyUserScreen(
      {super.key, required this.email, required this.inAppVerification});

  @override
  ConsumerState<VerifyUserScreen> createState() => _VerifyUserScreenState();
}

class _VerifyUserScreenState extends ConsumerState<VerifyUserScreen> {
  bool? isSuccess;
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              10.verticalSpacing,
              Spacer(),
              Text(
                'Enter verification code',
                style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: getDefaultSize(size: 16)),
              ),
              8.verticalSpacing,
              PinfeildWidget(
                length: 4,
                controller: controller,
              ),
              Spacer(),
              GestureDetector(
                  child: Text("Resend activation email",
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: getDefaultSize(),
                        color: PreluraColors.primaryColor,
                      )),
                  onTap: () async {
                    await ref
                        .read(authProvider.notifier)
                        .resendActivationEmail(email: widget.email);

                    ref.read(authProvider).whenOrNull(
                      data: (data) {
                        context.alert('Activation email sent');
                      },
                      error: (error, stackTrace) {
                        context.alert(error.toString());
                      },
                    );
                  }),
              30.verticalSpacing,
              Consumer(builder: (context, ref, _) {
                return SafeArea(
                  child: AppButton(
                    width: MediaQuery.sizeOf(context).width,
                    onTap: () async {
                      if (controller.text.isEmpty) {
                        context
                            .alert('Verification code is required to proceed');
                        return;
                      }

                      log('${controller.text}');
                      await ref
                          .read(authProvider.notifier)
                          .verifyAccount(code: controller.text);
                      ref.read(authProvider).whenOrNull(
                          error: (e, _) => context.alert(e.toString()),
                          data: (_) async {
                            // context.alert('Verified email successfully');
                            final isAuthrnticated =
                                ref.read(authStateProvider).requireValue;
                            await ref.refresh(userProvider.future);
                            return showCustomDialog(
                              context,
                              allowDismissal: false,
                              child: Container(
                                color: context.theme.scaffoldBackgroundColor,
                                padding: EdgeInsets.all(16),
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
                                    12.verticalSpacing,
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Congratulations\n  your account has been verified",
                                        textAlign: TextAlign.center,
                                        style: context
                                            .theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontSize:
                                                    getDefaultSize(size: 16),
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    16.verticalSpacing,
                                    PreluraButtonWithLoader(
                                        buttonTitle: "Continue",
                                        onPressed: () async {
                                          if (widget.inAppVerification) {
                                            context.router.popForced();
                                            return;
                                          }
                                          if (isAuthrnticated) {
                                            context.router.replace(AuthRoute());
                                          } else {
                                            context.router
                                                .replace(LoginRoute());
                                          }
                                        })
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    text: 'Verify Email',
                    loading: ref.watch(authProvider).isLoading,
                  ),
                );
              }),
              32.verticalSpacing,
            ],
          ),
        ),
      ),

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
