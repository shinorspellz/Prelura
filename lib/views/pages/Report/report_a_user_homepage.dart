import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/user/account_controller.dart';
import '../../../res/helper_function.dart';

@RoutePage()
class ReportAccountHomepage extends ConsumerStatefulWidget {
  final String selectedOption;
  final bool isOptionSelected;
  final String username;
  final bool isProduct;
  final int? productId;
  const ReportAccountHomepage({
    required this.selectedOption,
    required this.isOptionSelected,
    required this.username,
    this.productId,
    required this.isProduct,
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
                  16.verticalSpacing,
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
                        if (widget.isProduct) {
                          final response = await ref
                              .read(reportPorductProvider.notifier)
                              .reportProduct(
                                  reason: widget.selectedOption,
                                  productId: widget.productId ?? 0,
                                  content: textController.text);
                          showLoading.value = false;

                          if (!response.isEmpty) {
                            textController.clear();
                            HelperFunction.context = context;
                            HelperFunction.showToast(
                              message: response,
                            );
                            await Future.delayed(Duration(seconds: 2));

                            Navigator.of(context)
                              ..pop()
                              ..pop()
                              ..pop();
                          }
                        } else {
                          final response = await ref
                              .read(reportAccountProvider.notifier)
                              .reportAccount(
                                  reason: widget.selectedOption,
                                  username: widget.username,
                                  content: textController.text);
                          showLoading.value = false;

                          if (!response.isEmpty) {
                            textController.clear();
                            HelperFunction.context = context;
                            HelperFunction.showToast(
                              message: response,
                            );
                            await Future.delayed(Duration(seconds: 2));
                            Navigator.of(context)
                              ..pop()
                              ..pop()
                              ..pop();
                          }
                        }
                      }),
                );
              })
        ],
      ),
    );
  }
}
