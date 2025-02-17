import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/gap.dart';

@RoutePage()
class ReportAccountOptionsPage extends ConsumerStatefulWidget {
  const ReportAccountOptionsPage(
      {super.key,
      required this.username,
      required this.isProduct,
      this.productId});

  final String username;
  final bool isProduct;
  final int? productId;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReportAccountOptionsPageState();
}

class _ReportAccountOptionsPageState
    extends ConsumerState<ReportAccountOptionsPage> {
  bool isOptionSelected = false;
  final options = <String>[
    "This user has engaged in inappropriate or offensive behaviour towards others",
    "This user has engaged in harassing or abusive behavior towards others on the platform.",
    "The user has violated our community guidelines and terms of service.",
    "The user has posted inappropriate or explicit content.",
    "This user has been involved in fraudulent or deceptive activities.",
    "The user has been consistently unprofessional in their conduct.",
    "The user has been impersonating someone else on the platform.",
    "This user has engaged in harassing or abusive behavior towards others on the platform.",
    "Other",
  ];
  final productOptions = <String>[
    "The product has violated our community guidelines and terms of service.",
    "The product has posted inappropriate or explicit content.",
    "This product has been involved in fraudulent or deceptive activities.",
    "The product has been consistently unprofessional in their description.",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Report A User",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            if (!widget.isProduct) ...[
              ...options.map((e) {
                return PreluraCheckBox(
                  isChecked: isOptionSelected,
                  title: e,
                  onChanged: (value) => _onItemSelected(e, context),
                );
              }).toList(),
            ] else ...[
              ...productOptions.map((e) {
                return PreluraCheckBox(
                  isChecked: isOptionSelected,
                  title: e,
                  onChanged: (value) => _onItemSelected(e, context),
                );
              }).toList(),
            ],
            16.verticalSpacing
          ],
        ),
      ),
    );
  }

  void _onItemSelected(String option, BuildContext context) {
    context.router.push(ReportAccountHomepage(
        selectedOption: option,
        isOptionSelected: true,
        username: widget.username,
        productId: widget.productId,
        isProduct: widget.isProduct));
  }
}
