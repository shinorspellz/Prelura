import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/widget/discountItem.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/switch_with_text.dart';

final isSelectedProvider = StateProvider((ref) => false);
final fourItemDiscountValue = StateProvider<String?>((ref) => "0%");
final nineItemDiscountValue = StateProvider<String?>((ref) => "0%");
final aboveTenItemDiscountValue = StateProvider<String?>((ref) => "0%");

@RoutePage()
class MultiBuyDiscountScreen extends ConsumerStatefulWidget {
  const MultiBuyDiscountScreen({super.key});
  @override
  _EditSaveExampleState createState() => _EditSaveExampleState();
}

class _EditSaveExampleState extends ConsumerState<MultiBuyDiscountScreen> {
  bool isSelected = false;
  bool isEditing = false;

  @override
  void initState() {
    // isEditing = ref.read(isSelectedProvider);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "Multi-buy discounts ",
          centerTitle: true,
        ),
        body: Container(
            child: Column(children: [
          PreluraSwitchWithText(
            titleText: "Multi-buy discounts",
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 12.sp),
            value: ref.watch(isSelectedProvider),
            disabled: false,
            onChanged: (value) {
              ref.read(isSelectedProvider.notifier).state = value;
              setState(() {
                isSelected = value;
                isEditing = value;
              });
            },
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: PreluraColors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                  "Allow your customers to get exclusive discount when they buy multiple items from your shop.",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: getDefaultSize(),
                      fontWeight: FontWeight.w600,
                      color: PreluraColors.grey))),
          if (ref.watch(isSelectedProvider)) ...[
            DiscountItem(
              title: "2-4 items",
              isEditing: isEditing,
              percentageValue: fourItemDiscountValue,
            ),
            DiscountItem(
              title: "5-9 items",
              isEditing: isEditing,
              percentageValue: nineItemDiscountValue,
            ),
            DiscountItem(
              title: "10+ items",
              isEditing: isEditing,
              percentageValue: aboveTenItemDiscountValue,
            ),
            32.verticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AppButton(
                onTap: () {
                  HapticFeedback.lightImpact();

                  log(isEditing.toString());
                  if (ref.watch(fourItemDiscountValue) == "0%" &&
                      ref.watch(nineItemDiscountValue) == "0%" &&
                      ref.watch(aboveTenItemDiscountValue) == "0%" &&
                      isEditing) {
                    ref.read(isSelectedProvider.notifier).state = false;
                  }
                  setState(() {
                    isEditing = !isEditing;
                  });
                },
                text: isEditing ? "Save" : "Edit",
                textColor: PreluraColors.white,
                loading: false,
                bgColor: PreluraColors.primaryColor,
                height: 45,
                width: double.infinity,
              ),
            ),
          ]
        ])));
  }
}
