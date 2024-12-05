import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

import '../../../widgets/app_radio.dart';
import '../provider/condition_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class ConditionScreen extends ConsumerWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the selected condition state
    final selectedCondition = ref.watch(conditionProvider);
    const conditions = ConditionsEnum.values;

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          centerTitle: true,
          appbarTitle: "Condition"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            ...conditions.map((e) {
              // if (e == ConditionsEnum.$unknown) return Container();
              return PreluraRadio(
                title: e.simpleName,
                value: e.simpleName,
                groupValue: selectedCondition,
                subtitle: e.subtitle,
                onChanged: (value) {
                  if (value != null) {
                    // Update the selected condition in the provider
                    ref.read(sellItemProvider.notifier).selectCondition(e);
                    context.router.popForced();
                  }
                },
              );
            }),
            // PreluraRadio(
            //   title: "New without tags",
            //   value: "New without tags",
            //   groupValue: selectedCondition,
            //   subtitle: "A brand new , unused item without tags or original packaging",
            //   onChanged: (value) {
            //     if (value != null) {
            //       // Update the selected condition in the provider
            //       ref.read(sellItemProvider.notifier).selectCondition(value);
            //       context.router.popForced();
            //     }
            //   },
            // ),
            // PreluraRadio(
            //   title: "Very Good",
            //   value: "Very Good",
            //   groupValue: selectedCondition,
            //   subtitle: "A lightly used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing.",
            //   onChanged: (value) {
            //     if (value != null) {
            //       // Update the selected condition in the provider
            //       ref.read(sellItemProvider.notifier).selectCondition(value);
            //       context.router.popForced();
            //     }
            //   },
            // ),
            // PreluraRadio(
            //   title: "Good",
            //   value: "Good",
            //   groupValue: selectedCondition,
            //   subtitle: "A used item that may show imperfections and sign of wear. but still looks great. Includes photo and descriptions of any flaws in your listing.",
            //   onChanged: (value) {
            //     if (value != null) {
            //       // Update the selected condition in the provider
            //       ref.read(sellItemProvider.notifier).selectCondition(value);
            //       context.router.popForced();
            //     }
            //   },
            // ),
            // PreluraRadio(
            //   title: "Satisfactory",
            //   value: "Satisfactory",
            //   groupValue: selectedCondition,
            //   subtitle: "A fequently used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing.",
            //   onChanged: (value) {
            //     if (value != null) {
            //       // Update the selected condition in the provider
            //       ref.read(sellItemProvider.notifier).selectCondition(value);
            //       context.router.popForced();
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
