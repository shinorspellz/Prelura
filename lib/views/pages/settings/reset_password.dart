import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/controller/user/account_controller.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/auth_text_field.dart';

@RoutePage()
class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "Reset Password",
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    PreluraAuthTextField(
                      hintText: "Enter current password",
                      label: "Current Password",
                      isPassword: true,
                      controller: currentPassEC,
                      focusNode: currentPassFN,
                    ),
                    16.verticalSpacing,
                    PreluraAuthTextField(
                      hintText: "Enter new password",
                      label: "New Password",
                      isPassword: true,
                      controller: newPassEC,
                      focusNode: newPassFN,
                    ),
                    16.verticalSpacing,
                    PreluraAuthTextField(
                      hintText: "Confirm new password",
                      label: "Confirm new Password",
                      isPassword: true,
                      controller: confirmPassEC,
                      focusNode: confirmPassFN,
                    ),
                    Spacer(),
                    PreluraButtonWithLoader(
                      onPressed: () async {
                        changePassword(context);
                      },
                      buttonTitle: "Reset Password",
                      showLoadingIndicator: isLoading,
                    ),
                    32.verticalSpacing
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//!========= Keys =============\\
  final formKey = GlobalKey<FormState>();

//!========= Controllers =============\\
  var currentPass = "";
  var currentPassEC = TextEditingController();
  var newPassEC = TextEditingController();
  var confirmPassEC = TextEditingController();

//!========= Focus Nodes =============\\
  var currentPassFN = FocusNode();
  var newPassFN = FocusNode();
  var confirmPassFN = FocusNode();

//!========= Booleans =============\\
  var isLoading = false;

//!========= Functions =============\\
  Future<void> changePassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (currentPassEC.text.isEmpty) {
        context.alert('Current password cannot be empty');
        return;
      } else if (newPassEC.text.isEmpty) {
        context.alert('New password cannot be empty');
        return;
      } else if (confirmPassEC.text.isEmpty) {
        context.alert('Confirm new password cannot be empty');
        return;
      } else if (confirmPassEC.text != newPassEC.text) {
        context.alert("Passwords do not match");
        return;
      }

      setState(() => isLoading = true);

      try {
        ref.read(accountNotifierProvider.notifier).passwordChange(
              currentPassword: currentPassEC.text,
              newPassword: confirmPassEC.text,
            );

        ref.read(accountNotifierProvider).whenOrNull(
          error: (e, _) {
            setState(() => isLoading = false);
            return context.alert('An error occurred: $e');
          },
          data: (_) async {
            setState(() => isLoading = false);
            if (context.mounted) {
              HelperFunction.showToast(message: "Pasword updated!");
              await ref.read(authProvider.notifier).logout();
              ref.read(categoryNotifierProvider.notifier).clearCache();
              ref.read(authProvider).whenOrNull(
                    error: (e, _) => context.alert("An error occurred"),
                  );
            }
          },
        );
      } catch (e, stackTrace) {
        setState(() => isLoading = false);
        log("An error occured: $e", stackTrace: stackTrace);
        context.alert("Failed to update password: $e");
      }
    }
  }
}
