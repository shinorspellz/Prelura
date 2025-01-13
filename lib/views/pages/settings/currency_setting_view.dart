import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';

import '../../../res/colors.dart';
import '../../widgets/app_checkbox.dart';

// enum Currency { USD, EUR, GBP }

@RoutePage()
class CurrencySettingScreen extends ConsumerStatefulWidget {
  const CurrencySettingScreen({super.key});

  @override
  ConsumerState<CurrencySettingScreen> createState() =>
      _CurrencySettingScreenState();
}

class _CurrencySettingScreenState extends ConsumerState<CurrencySettingScreen> {
  List<String> currencies = [
    "US Dollar (USD)",
    "British Pound (EUR)",
    "Canadian Dollar (GBP)",
  ];
  String? currency;

  bool isLoading = false;
  bool isStyleExpanded = false;
  final ExpansionTileController controller = ExpansionTileController();
  final ExpansionTileController styleController = ExpansionTileController();

  @override
  void initState() {
    super.initState();
    currency = "British Pound (EUR)";
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider).valueOrNull;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Currency settings',
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        trailingIcon: [
          TextButton(
            onPressed: () {
              // final updatedUser = ref.read(userProvider);
              // Save functionality
            },
            child: const Text('Save', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Optional padding for better UI
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: context.isDarkMode
                      ? PreluraColors.white.withOpacity(0.5)
                      : Theme.of(context).dividerColor,
                ),
              ),
              child: ExpansionTile(
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Preferred Currency",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: ": $currency",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: getDefaultSize(),
                            fontWeight: FontWeight.w400,
                            color: PreluraColors.grey,
                          ),
                    )
                  ])),
                  tilePadding:
                      EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                  // childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                  minTileHeight: 30,
                  // onExpansionChanged: (expanded) => setState(() => expandedCategories = expanded),
                  controller: styleController,
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 300),
                  ),
                  children: currencies.map((x) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: PreluraCheckBox(
                        sideText: " ",
                        sideTextColor: PreluraColors.grey,
                        isChecked: currency == x,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: getDefaultSize(),
                              fontWeight: FontWeight.w600,
                            ),
                        onChanged: (value) {
                          currency = value ? x : "";
                          setState(() {});
                          styleController.collapse();
                        },
                        title: x,
                      ),
                    );
                  }).toList()),
            )
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 106,
      //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      //   child: PreluraButtonWithLoader(
      //     showLoadingIndicator: isLoading,
      //     onPressed: () async {},
      //
      //     buttonTitle: 'Update',
      //     // width: MediaQuery.sizeOf(context).width,
      //   ),
      // ),
    );
  }

  Widget buildDropdownField(BuildContext context, String label, String? value,
      List<String> options, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          DropdownButton<String>(
            value: value,
            isExpanded: true,
            onChanged: onChanged,
            items: options.map((String option) {
              return DropdownMenuItem(
                key: Key(label),
                value: option,
                child: Text(option),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
