import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:sizer/sizer.dart';

import '../../../../controller/auth/auth_controller.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/gap.dart';

@RoutePage()
class NewPasswordScreen extends ConsumerStatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  ConsumerState<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends ConsumerState<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  String? newPasswordError;
  String? confirmPasswordError;
  String? otpError;

  void _validateNewPassword(String value) {
    setState(() {
      newPasswordError = value.isEmpty
          ? "Please enter a new password"
          : value.length < 8
              ? "Password must be at least 8 characters"
              : null;
    });
  }

  void _validateConfirmPassword(String value) {
    setState(() {
      confirmPasswordError = value.isEmpty
          ? "Please confirm your password"
          : value != _newPasswordController.text
              ? "Passwords do not match"
              : null;
    });
  }

  void _validateOtp(String value) {
    setState(() {
      otpError = value.isEmpty
          ? "Please enter the OTP"
          : value.length != 6
              ? "OTP must be 4 digits"
              : null;
    });
  }

  void _resetPassword() async {
    _validateNewPassword(_newPasswordController.text);
    _validateConfirmPassword(_confirmPasswordController.text);
    _validateOtp(_otpController.text);

    if (newPasswordError == null &&
        confirmPasswordError == null &&
        otpError == null) {
      final newPassword = _newPasswordController.text;
      final otp = _otpController.text;

      await ref
          .read(authProvider.notifier)
          .resetPassword(newPassword: newPassword, token: otp, email: "");
      ref.read(authProvider).whenOrNull(
            error: (e, _) => context.alert(e.toString()),
            data: (_) {
              context.router.replaceAll([LoginRoute()]);
            },
          );
    }
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _otpController.dispose();
    super.dispose();
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
        appbarTitle: "Reset Password",
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PreluraAuthTextField(
                  controller: _newPasswordController,
                  hintText: "Enter new password",
                  label: "New Password",
                  isPassword: true,
                  onChanged: _validateNewPassword,
                ),
                if (newPasswordError != null)
                  Text(
                    newPasswordError!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                16.verticalSpacing,
                PreluraAuthTextField(
                  controller: _confirmPasswordController,
                  hintText: "Confirm new password",
                  label: "Confirm Password",
                  isPassword: true,
                  onChanged: _validateConfirmPassword,
                ),
                if (confirmPasswordError != null)
                  Text(
                    confirmPasswordError!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                16.verticalSpacing,
                PreluraAuthTextField(
                  controller: _otpController,
                  hintText: "Enter OTP",
                  label: "OTP",
                  onChanged: _validateOtp,
                ),
                if (otpError != null)
                  Text(
                    otpError!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                Spacer(),
                AppButton(
                  onTap: _resetPassword,
                  text: "Reset Password",
                  width: 100.w,
                ),
                32.verticalSpacing,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
