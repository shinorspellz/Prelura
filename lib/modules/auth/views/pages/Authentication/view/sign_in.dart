import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_text_button.dart';
import 'package:prelura_app/modules/auth/views/widgets/auth_text_field.dart';
import 'package:prelura_app/res/context_entension.dart';

import '../../../../../../res/images.dart';
import '../../../../../../res/render_svg.dart';
import '../../../../../../res/utils.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/gap.dart';
import '../provider/sign_in_provider.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final loginNotifier = ref.read(loginProvider.notifier);
    final formKey = GlobalKey<FormState>();
    final mcontext = Theme.of(context);

    return Scaffold(
      appBar: PreluraAppBar(
        // leadingIcon: VWidgetsBackButton(),
        appbarTitle: "",
      ),
      body: GestureDetector(
        onTap: () => dismissKeyboard(),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: 0, right: 25, left: 25, bottom: 10),
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
                    controller: loginState.emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: loginNotifier.toggleObscureText,
                        icon: RenderSvg(
                          svgPath: PreluraIcons.mailIcon,
                          color: Colors.transparent,
                        )),
                  ),
                  addVerticalSpacing(20),
                  PreluraAuthTextField(
                    hintText: "Password",
                    controller: loginState.passwordController,
                    obscureText: loginState.obscureText,
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: loginNotifier.toggleObscureText,
                      icon: loginState.obscureText
                          ? const RenderSvg(svgPath: PreluraIcons.eyeIcon)
                          : const RenderSvg(
                              svgPath: PreluraIcons.eyeSlashOutline),
                    ),
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
                  ValueListenableBuilder<bool>(
                    valueListenable: ValueNotifier(loginState.isLoading),
                    builder: (context, isLoading, child) {
                      return PreluraButtonWithLoader(
                        showLoadingIndicator: isLoading,
                        onPressed: isLoading
                            ? null
                            : () {
                                
                                //   if (formKey.currentState?.validate() ?? false) {
                                //     loginNotifier.signIn(context: context);
                                //   }

                                // try {
                                //   if (_formKey.currentState!.validate()) {
                                //     showLoading.value = true;
                                //     final result = await loginNotifier.startLoginSession(
                                //       _usermail.text.trim().toLowerCase(),
                                //       _password.text.trim(),
                                //       context,
                                //       location: 'login',
                                //     );
                                //     if (!result) {
                                //       showLoading.value = false;
                                //     }
                                //   } else {
                                //     showLoading.value = false;
                                //     VWidgetShowResponse.showToast(
                                //       ResponseEnum.warning,
                                //       message: "Please fill all fields",
                                //     );
                                //   }
                                // } on Exception {
                                //   showLoading.value = false;
                                // }
                                
                                context.router.replace(const AuthRoute());
                              },
                        buttonTitle: 'Sign in',
                      );
                    },
                  ),
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
        padding: EdgeInsets.only(bottom: 16),
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
              onPressed: () {},
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
