import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Settings/widget/discountItem.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/switch_with_text.dart';

final isSelectedProvider = StateProvider((ref) => false);

@RoutePage()
class MultiBuyDiscountScreen extends ConsumerStatefulWidget {
  const MultiBuyDiscountScreen({super.key});
  @override
  _EditSaveExampleState createState() => _EditSaveExampleState();
}

class _EditSaveExampleState extends ConsumerState<MultiBuyDiscountScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "Multi-buy discount",
          centerTitle: true,
        ),
        body: Container(
            child: Column(children: [
          PreluraSwitchWithText(
            titleText: "Multi -buy Discount",
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
                      fontWeight: FontWeight.w600, color: PreluraColors.grey))),
          if (ref.watch(isSelectedProvider)) ...[
            DiscountItem(
              title: "2-4 items",
            ),
            DiscountItem(
              title: "5-9 items",
            ),
            DiscountItem(
              title: "10+ items",
            )
          ]
        ])));
  }
}
