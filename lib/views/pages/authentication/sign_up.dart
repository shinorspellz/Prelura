import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_text_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';

import '../../widgets/app_button_with_loader.dart';
import '../../widgets/gap.dart';

@RoutePage()
class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    // final loginState = ref.watch(loginProvider);
    // final loginNotifier = ref.read(loginProvider.notifier);

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
                    "Sign up",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  addVerticalSpacing(35),
                  PreluraAuthTextField(
                    hintText: "First Name",
                    label: "First Name",
                    // controller: loginState.usernameController,
                    onSaved: (value) => firstName = value,
                    keyboardType: TextInputType.name,
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "First name is required";
                      }
                      return null;
                    },
                  ),
                  20.verticalSpacing,
                  PreluraAuthTextField(
                    hintText: "Last Name",
                    label: "Last Name",
                    // controller: loginState.usernameController,
                    onSaved: (value) => lastName = value,
                    keyboardType: TextInputType.name,
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Last tname is required";
                      }
                      return null;
                    },
                  ),
                  20.verticalSpacing,
                  PreluraAuthTextField(
                    hintText: "Username",
                    label: "Username",
                    // controller: loginState.usernameController,
                    onSaved: (value) => username = value,
                    keyboardType: TextInputType.name,
                    onChanged: (val) {},
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
                  ),
                  addVerticalSpacing(20),
                  PreluraAuthTextField(
                    hintText: "Email address",
                    label: "Email address",
                    // controller: loginState.usernameController,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) => email = value,
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
                    // obscureText: loginState.obscureText,
                    onSaved: (value) => password = value,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                    isPassword: true,
                  ),
                  addVerticalSpacing(15),
                  PreluraAuthTextField(
                    hintText: "Confirm Password",
                    label: "Confirm Password",
                    // controller: loginState.passwordController,

                    onSaved: (value) => confirmPassword = value,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                    isPassword: true,
                    // suffixIcon: IconButton(
                    //   padding: const EdgeInsets.all(0),
                    //   onPressed: loginNotifier.toggleObscureText,
                    //   icon: loginState.obscureText ? const RenderSvg(svgPath: PreluraIcons.eyeIcon) : const RenderSvg(svgPath: PreluraIcons.eyeSlashOutline),
                    // ),
                  ),

                  addVerticalSpacing(40),
                  PreluraButtonWithLoader(
                    showLoadingIndicator: ref.watch(authProvider).isLoading,
                    onPressed: () async {
                      final valid = formKey.currentState?.validate() ?? false;
                      if (!valid) return;

                      formKey.currentState!.save();

                      assert(
                        username != null ||
                            firstName != null ||
                            lastName != null ||
                            email != null ||
                            password != null ||
                            confirmPassword != null,
                        'All registration fields should not be null',
                      );
                      await ref.read(authProvider.notifier).register(
                            email!,
                            firstName!,
                            lastName!,
                            password!,
                            confirmPassword!,
                            username!,
                          );
                      ref.read(authProvider).whenOrNull(
                            error: (e, _) => context.alert(e.toString()),
                            data: (_) =>
                                context.router.replaceAll([const AuthRoute()]),
                          );
                    },
                    buttonTitle: 'Sign Up',
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
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: mcontext.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
            ),
            PreluraTextButton(
              text: "Sign In",
              onPressed: () {
                context.router.push(LoginRoute());
              },
              textStyle: mcontext.textTheme.bodyLarge!.copyWith(
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
