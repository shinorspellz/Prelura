import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_text_button.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/images.dart';
import '../../../../../res/render_svg.dart';
import '../../../../../res/utils.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/gap.dart';
import '../provider/sign_in_provider.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  /// This argument is only used in router auth guard when the user is invalidated
  /// and redirected to this page.
  final void Function(bool isLoggedIn)? onLoginResult;
  const LoginScreen({super.key, this.onLoginResult});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  String? username;
  String? password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    final loginNotifier = ref.read(loginProvider.notifier);

    final mcontext = Theme.of(context);

    return Scaffold(
      body: GestureDetector(
        onTap: () => dismissKeyboard(),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: 40, right: 25, left: 25, bottom: 10),
              child: Column(
                children: [
                  Text(
                    "Sign in",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  addVerticalSpacing(35),
                  PreluraAuthTextField(
                    hintText: "Username",
                    label: "Username",
                    // controller: loginState.usernameController,
                    // controller: username,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (val) {},
                    onSaved: (value) => username = value,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
                  ),
                  addVerticalSpacing(20),
                  PreluraAuthTextField(
                    hintText: "Password",
                    label: "Password",
                    // controller: loginState.passwordController,
                    onSaved: (value) => password = value,
                    // controller: password,
                    // obscureText: loginState.obscureText,
                    // onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                    isPassword: true,
                  ),
                  addVerticalSpacing(15),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: mcontext.textTheme.displayMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpacing(40),
                  PreluraButtonWithLoader(
                    showLoadingIndicator: ref.watch(authProvider).isLoading,
                    onPressed: () async {
                      final valid = formKey.currentState?.validate() ?? false;
                      if (!valid) return;

                      formKey.currentState!.save();

                      assert(
                        username != null || password != null,
                        'All login feilds should not be null',
                      );

                      await ref.read(authProvider.notifier).login(
                            username!.trim(),
                            password!,
                          );
                      ref.read(authProvider).whenOrNull(
                            error: (e, _) => context.alert(e.toString()),
                            data: (_) {
                              if (widget.onLoginResult == null) {
                                context.router.replaceAll([const AuthRoute()]);
                                log('auth with login result');
                                return;
                              }
                              widget.onLoginResult?.call(true);
                            },
                          );
                    },
                    buttonTitle: 'Sign in',
                  ),
                  // ValueListenableBuilder<bool>(
                  //   valueListenable: ValueNotifier(loginState.isLoading),
                  //   builder: (context, isLoading, child) {
                  //     return ;
                  //   },
                  // ),
                  addVerticalSpacing(35),
                  // Text(
                  //   "Or via social media",
                  //   style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 18,
                  //         color: Theme.of(context).primaryColor,
                  //       ),
                  // ),
                  // addVerticalSpacing(20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     GestureDetector(
                  //       child: Image.asset(
                  //         PreluraIcons.facebookIcon,
                  //         height: 26,
                  //         width: 26,
                  //         fit: BoxFit.cover,
                  //       ),
                  //       onTap: () {},
                  //     ),
                  //     SizedBox(
                  //       width: 30,
                  //     ),
                  //     GestureDetector(
                  //         child: Container(
                  //           child: Image.asset(
                  //             PreluraIcons.googleIcon,
                  //             height: 26,
                  //             width: 26,
                  //           ),
                  //         ),
                  //         onTap: () async {
                  //           // UserCredential? credentials = await SocialAuth.signInWithGoogle(context: context);
                  //           // if (credentials != null) {
                  //           //   List<String> nameParts = credentials.user!.displayName!.split(' ');
                  //           //   loginNotifier.startSocialLoginSession("google-oauth2", credentials.credential!.accessToken!, null, null, context,
                  //           //       authState: AuthStatus.authenticated);
                  //           // } else {
                  //           //   logger.e('credentials were null');
                  //           // }
                  //         }),
                  //     SizedBox(
                  //       width: 30,
                  //     ),
                  //     GestureDetector(
                  //       child: Container(
                  //         child: NormalRenderSvg(
                  //           svgPath: context.isDarkMode
                  //               ? PreluraIcons.whiteAppleIcon
                  //               : PreluraIcons.appleIcon,
                  //         ),
                  //       ),
                  //       onTap: () async {
                  //         // final credential = await SignInWithApple.getAppleIDCredential(
                  //         //   scopes: [
                  //         //     AppleIDAuthorizationScopes.email,
                  //         //     AppleIDAuthorizationScopes.fullName,
                  //         //   ],
                  //         // );

                  //         // print(credential);

                  //         // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
                  //         // after they have been validated with Apple (see `Integration` section for more information on how to do this)
                  //       },
                  //     )
                  //   ],
                  // ),
                  addVerticalSpacing(20),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: mcontext.textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
            ),
            PreluraTextButton(
              text: "Sign Up",
              onPressed: () {
                context.router.push(const SignUpRoute());
              },
              textStyle: mcontext.textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
