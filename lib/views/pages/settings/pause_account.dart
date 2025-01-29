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
class PauseAccount extends ConsumerStatefulWidget {
  const PauseAccount({super.key});

  @override
  ConsumerState<PauseAccount> createState() => _PauseAccountState();
}

class _PauseAccountState extends ConsumerState<PauseAccount> {
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
          appbarTitle: "Pause account",
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
                      // validator: (p0) {
                      //   if (p0!.isEmpty) {
                      //     return "Password is required";
                      //   }
                      //   return null;
                      // },
                    ),
                    Spacer(),
                    PreluraButtonWithLoader(
                      onPressed: () async {
                        pauseAccount(context);
                      },
                      buttonTitle: "Pause account",
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
  var passwordEC = TextEditingController();

//!========= Focus Nodes =============\\
  var passwordFN = FocusNode();

//!========= Booleans =============\\
  var isLoading = false;

//!========= Functions =============\\
  Future<void> pauseAccount(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (passwordEC.text.isEmpty) {
        context.alert('Password cannot be empty');
        return;
      }

      setState(() => isLoading = true);

      try {} catch (e, stackTrace) {
        setState(() => isLoading = false);
        log("An error occured: $e", stackTrace: stackTrace);
        context.alert("Failed to Pause account: $e");
      }
    }
  }
}
