import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sell_item_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_checkbox.dart';

@RoutePage()
class StylePage extends ConsumerWidget {
  const StylePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedParcel = ref.watch(sellItemProvider).style;

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        appbarTitle: "Style",
      ),
      body: ListView(
        children: Enum$StyleEnum.values.map((e) {
          if (e == Enum$StyleEnum.$unknown) return Container();
          return PreluraCheckBox(
            title: e.name.replaceAll('_', " ").toLowerCase(),
            isChecked: e.name == selectedParcel?.name,
            onChanged: (value) {
              ref.read(sellItemProvider.notifier).selectStyle(e);
              context.router.popForced();
            },
          );
        }).toList(),
      ),
    );
  }
}
