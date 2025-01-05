import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_in.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:sizer/sizer.dart';

import '../../../../controller/auth/auth_controller.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/app_button_with_loader.dart';
import '../../../widgets/auth_text_field.dart';

@RoutePage()
class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String error_message = "";

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _onSubmit() async {
    dismissKeyboard();
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final emailRegex = RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$");
      if (!emailRegex.hasMatch(email)) {
        context.alert("Incorrect email address");
        return;
      }
      await ref.read(forgotPasswordProvider.notifier).requestEmailOtp(
            email.trim(),
          );
      HelperFunction.context = context;
      HelperFunction.showToast(message: "Email sent successfully");

      ref.read(forgotPasswordProvider).whenData(
        (_) {
          context.router.replaceAll([NewPasswordRoute(email: email.trim())]);
        },
      );

      debugPrint('Valid Email: $email');
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email address";
    }
    final emailRegex = RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$");
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Forgot Password",
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PreluraAuthTextField(
                  label: "Email Address",
                  hintText: "Enter your email address",
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,

                  // validator: _validateEmail,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
        child: PreluraButtonWithLoader(
          showLoadingIndicator: ref.watch(forgotPasswordProvider).isLoading,
          onPressed: _onSubmit,
          buttonTitle: "Confirm Email",
        ),
      ),
    );
  }
}
