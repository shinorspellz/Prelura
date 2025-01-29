import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/alert.dart';
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
    // currentPass = ref.read(userProvider).valueOrNull?. ?? "";
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
                      hintText: "Enter current password",
                      label: "Current Password",
                      isPassword: true,
                      controller: currentPassEC,
                      focusNode: currentPassFN,
                      // validator: (p0) {
                      //   if (p0!.isEmpty) {
                      //     return "Current password is required";
                      //   }
                      //   return null;
                      // },
                    ),
                    Spacer(),
                    PreluraButtonWithLoader(
                      onPressed: () async {
                        resetPassword(context);
                      },
                      buttonTitle: "Delete Account",
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

//!========= Focus Nodes =============\\
  var currentPassFN = FocusNode();

//!========= Booleans =============\\
  var isLoading = false;

//!========= Functions =============\\
  Future<void> resetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (currentPassEC.text.isEmpty) {
        context.alert('Current password cannot be empty');
        return;
      } else if (currentPassEC.text != currentPass) {
        context.alert("Invalid password, please enter the correct password");
        return;
      }

      setState(() => isLoading = true);

      try {} catch (e, stackTrace) {
        setState(() => isLoading = false);
        log("An error occured: $e", stackTrace: stackTrace);
        context.alert("Failed to delete account: $e");
      }
    }
  }
}
