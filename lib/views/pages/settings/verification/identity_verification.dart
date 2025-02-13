import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:persona_flutter/persona_flutter.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../widgets/app_bar.dart';
import '../../../widgets/app_button.dart';

@RoutePage()
class VerifyYourIdentity extends StatefulWidget {
  const VerifyYourIdentity({super.key});

  @override
  State<VerifyYourIdentity> createState() => _VerifyYourIdentityState();
}

class _VerifyYourIdentityState extends State<VerifyYourIdentity> {
  late InquiryConfiguration _configuration;

  late StreamSubscription<InquiryCanceled> _streamCanceled;

  late StreamSubscription<InquiryError> _streamError;

  late StreamSubscription<InquiryComplete> _streamComplete;

  @override
  void initState() {
    super.initState();

    _configuration = TemplateIdConfiguration(
      templateId: "itmpl_Q6ymLRwKfY8PGEjqsCjhUUfu",
      environment: InquiryEnvironment.sandbox,
      // locale: "pt-BR",
      // Client theming is deprecated and will be removed in the future.
      theme: InquiryTheme(
        source: InquiryThemeSource.client,
        accentColor: PreluraColors.primaryColor,
        primaryColor: PreluraColors.primaryColor,
        buttonBackgroundColor: PreluraColors.primaryColor,
        darkPrimaryColor: PreluraColors.primaryColorOld,
        buttonCornerRadius: 8,
        textFieldCornerRadius: 0,
      ),
    );

    _streamCanceled = PersonaInquiry.onCanceled.listen(_onCanceled);
    _streamError = PersonaInquiry.onError.listen(_onError);
    _streamComplete = PersonaInquiry.onComplete.listen(_onComplete);
  }

  @override
  void dispose() {
    _streamCanceled.cancel();
    _streamError.cancel();
    _streamComplete.cancel();
    super.dispose();
  }

  void _onCanceled(InquiryCanceled event) {
    print("InquiryCanceled");
    print("- inquiryId: ${event.inquiryId}");
    print("- sessionToken: ${event.sessionToken}");
  }

  void _onError(InquiryError event) {
    print("InquiryError");
    print("- error: ${event.error}");
  }

  void _onComplete(InquiryComplete event) {
    print("InquiryComplete");
    print("- inquiryId: ${event.inquiryId}");
    print("- status: ${event.status}");

    print("- fields:");
    for (var key in event.fields.keys) {
      print("-- key: $key, value: ${event.fields[key]}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: "Identity Verification",
        centerTitle: true,
      ),
      body: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: Center(
          child: AppButton(
            onTap: () {
              PersonaInquiry.init(configuration: _configuration);
              PersonaInquiry.start();
            },
            text: "Start Inquiry",
          ),
        ),
      ),
    );
  }
}
