import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';

import '../../../controller/product/provider/sell_item_provider.dart';

@RoutePage()
class ConditionScreen extends ConsumerWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the selected condition state
    final selectedCondition = ref.watch(sellItemProvider).selectedCondition;
    const conditions = ConditionsEnum.values;

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          centerTitle: true,
          appbarTitle: "Condition"),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: conditions.length,
        itemBuilder: (context, index) {
          final e = conditions[index];
          // if (e == ConditionsEnum.$unknown) return Container();
          return PreluraCheckBox(
            title: e.simpleName,
            isChecked: e.simpleName == selectedCondition?.simpleName,
            subtitle: e.subtitle,
            onChanged: (value) {
              // Update the selected condition in the provider
              ref.read(sellItemProvider.notifier).selectCondition(e);
              context.router.popForced();
            },
          );
        },
      ),
    );
  }
}
