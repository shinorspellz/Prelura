import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/auth_text_field.dart';

@RoutePage()
class ResetPasswordScreen extends ConsumerWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          child: Center(
            child: Column(
              children: [
                PreluraAuthTextField(
                  hintText: "Enter current password",
                  label: "Current Password",
                  isPassword: true,
                ),
                16.verticalSpacing,
                PreluraAuthTextField(
                  hintText: "Enter new password",
                  label: "New Password",
                  isPassword: true,
                ),
                16.verticalSpacing,
                PreluraAuthTextField(
                  hintText: "Confirm new password",
                  label: "New Password",
                  isPassword: true,
                ),
                Spacer(),
                AppButton(
                  onTap: () {},
                  text: "Reset Password",
                  width: 100.w,
                ),
                32.verticalSpacing
              ],
            ),
          ),
        ),
      ),
    );
  }
}
