import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:persona_flutter/persona_flutter.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../res/utils.dart';
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
        templateId: "itmpl_fHkEmxaeUFrAU1eBG4zuL28x7pCs",
        environment: InquiryEnvironment.sandbox,
        // environmentId: "persona_sandbox_b4f81280-4e6b-4f13-8575-41f4c036d55b",
        routingCountry: "Uk",
        locale: "en-US",
        fields: {
          "selected_country_code": null,
          "name_first": "",
          "name_last": "",
          "birthdate": "",
          "address_street_1": "",
          "address_city": "",
          "address_subdivision": "",
          "address_postal_code": "",
          "address_country_code": "GB",
          "phone_number": "",
          "email_address": "",
          // "customAttribute": "hello",
        },
        // Client theming is deprecated and will be removed in the future.
        theme: InquiryTheme(source: InquiryThemeSource.server));

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
    log("InquiryError");
    log("- error: ${event.error}");
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
            text: "Start Verification",
          ),
        ),
      ),
    );
  }
}
