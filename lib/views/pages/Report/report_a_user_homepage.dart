import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';

@RoutePage()
class ReportAccountHomepage extends ConsumerStatefulWidget {
  final String selectedOption;
  final bool isOptionSelected;
  const ReportAccountHomepage({
    required this.selectedOption,
    required this.isOptionSelected,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReportAccountHomepageState();
}

class _ReportAccountHomepageState extends ConsumerState<ReportAccountHomepage> {
  // String _details = '';
  final textController = TextEditingController();
  final showLoading = ValueNotifier(false);

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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  addVerticalSpacing(25),
                  PreluraCheckBox(
                      isChecked: widget.isOptionSelected,
                      title: widget.selectedOption,
                      onChanged: (value) {}),
                  PreluraAuthTextField(
                    controller: textController,
                    isDescription: true,
                    minLines: 4,
                    maxLines: null,
                    hintText: "Share as much details as possible...",
                    onChanged: (value) {
                      // _details = value;
                    },
                  )
                ],
              ),
            ),
          ),
          ValueListenableBuilder(
              valueListenable: showLoading,
              builder: (context, value, _) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 40),
                  child: AppButton(
                    loading: value,
                    width: double.infinity,
                    text: "Send Report",
                    onTap: () async {
                      showLoading.value = true;
                      // final response = await ref
                      //     .read(reportAccountProvider.notifier)
                      //     .reportAccount(
                      //         reason: widget.selectedOption,
                      //         content: textController.text);
                      // showLoading.value = false;
                      // if (!response.isEmptyOrNull) {
                      //   textController.clear();
                      //   Navigator.of(context)
                      //     ..pop()
                      //     ..pop();
                      // responseDialog(context, response);
                      // SnackBarService().showSnackBar(
                      //     message: response,
                      //     context: context);
                      // }
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
