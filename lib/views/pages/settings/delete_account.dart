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
class DeleteAccount extends ConsumerStatefulWidget {
  const DeleteAccount({super.key});

  @override
  ConsumerState<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends ConsumerState<DeleteAccount> {
  @override
  void initState() {
    super.initState();
    // password = ref.read(userProvider).valueOrNull?. ?? "";
  }

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
          appbarTitle: "Delete account",
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
                      hintText: "Enter password",
                      label: "Password",
                      isPassword: true,
                      controller: passwordEC,
                      focusNode: passwordFN,
                    ),
                    Spacer(),
                    PreluraButtonWithLoader(
                      onPressed: () async {
                        deleteAccount(context);
                      },
                      buttonTitle: "Delete Account",
                      showLoadingIndicator:
                          ref.watch(accountNotifierProvider).isLoading,
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
  var password = "";
  var passwordEC = TextEditingController();

//!========= Focus Nodes =============\\
  var passwordFN = FocusNode();

//!========= Booleans =============\\
  var isLoading = false;

//!========= Functions =============\\
  Future<void> deleteAccount(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (passwordEC.text.isEmpty) {
        context.alert('Password cannot be empty');
        return;
      }

      try {
        ref
            .read(accountNotifierProvider.notifier)
            .deleteAccount(password: passwordEC.text);

        ref.read(accountNotifierProvider).whenOrNull(
          error: (e, _) {
            return context.alert('An error occurred: $e');
          },
          data: (_) async {
            // if (context.mounted) {
            HelperFunction.context = context;
            HelperFunction.showToast(message: "Account deleted!");

            await Future.delayed(const Duration(seconds: 2));

            //!==== Logout the user ====\\
            await ref.read(authProvider.notifier).logout();
            ref.read(categoryNotifierProvider.notifier).clearCache();
            ref.read(authProvider).whenOrNull(
                  error: (e, _) => context.alert("An error occurred"),
                );
            // }
          },
        );
      } catch (e, stackTrace) {
        log("An error occured: $e", stackTrace: stackTrace);
        context.alert("Failed to delete account: $e");
      }
    }
  }
}
