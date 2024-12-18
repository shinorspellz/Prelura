import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/graphql/__generated/schema.graphql.dart';
import '../../../widgets/SearchWidget.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/app_checkbox.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class StylePage extends ConsumerStatefulWidget {
  const StylePage({super.key});

  @override
  ConsumerState<StylePage> createState() => _StylePageState();
}

class _StylePageState extends ConsumerState<StylePage> {
  String searchQuery = ""; // Holds the user's search input

  @override
  Widget build(BuildContext context) {
    final selectedParcel = ref.watch(sellItemProvider).style;

    // Filter the styles based on the search query
    final filteredStyles = Enum$StyleEnum.values
        .where((style) =>
            style != Enum$StyleEnum.$unknown) // Exclude unknown value
        .where((style) => style.name
            .replaceAll('_', ' ')
            .toLowerCase()
            .contains(searchQuery.toLowerCase())) // Match search query
        .toList();

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Searchwidget(
              hintText: "Find a style",
              obscureText: false,
              shouldReadOnly: false,
              // padding: const EdgeInsets.symmetric(horizontal: 16.0),
              enabled: true,
              showInputBorder: true,
              autofocus: false,
              cancelButton: true,
              onChanged: (val) {
                setState(() {
                  searchQuery = val; // Update the search query
                });
              },
            ),
            ...filteredStyles.map((style) {
              return PreluraCheckBox(
                title: style.name[0].toUpperCase() +
                    style.name.substring(1).replaceAll('_', " ").toLowerCase(),
                isChecked: style.name == selectedParcel?.name,
                onChanged: (value) {
                  ref.read(sellItemProvider.notifier).selectStyle(style);
                  context.router.popForced();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
