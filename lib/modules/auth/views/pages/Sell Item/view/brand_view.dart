import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../../../widgets/SearchWidget.dart';
import '../provider/brand_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class BrandSelectionPage extends ConsumerWidget {
  final List<String> suggestedBrands = ['Dickies', 'BUT'];
  final List<String> popularBrands = [
    'Dickies',
    'Next',
    'Primark',
    'Shein',
    'Zara',
    'H&M',
    'New Look',
    'Marks & Spencer',
    'George',
    'E&F'
  ];

  BrandSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedBrand = ref.watch(sellItemProvider).brand;

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Brand"),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Searchwidget(
                hintText: "Find a brand",
                obscureText: false,
                shouldReadOnly: false,
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true),
          ),
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  title: Text('Suggested'),
                  dense: true,
                ),
                const Divider(
                  thickness: 1,
                ),
                ...suggestedBrands.map((brand) => Column(
                      children: [
                        ListTile(
                          title: Text(brand),
                          trailing: Radio<String>(
                            value: brand,
                            groupValue: selectedBrand,
                            onChanged: (value) => {
                              ref
                                  .read(selectedBrandProvider.notifier)
                                  .selectBrand(value),
                              context.back()
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    )),
                const ListTile(
                  title: Text('Popular brands'),
                  dense: true,
                ),
                const Divider(
                  thickness: 1,
                ),
                ...popularBrands.map((brand) => Column(
                      children: [
                        ListTile(
                          title: Text(brand),
                          trailing: Radio<String>(
                              value: brand,
                              groupValue: selectedBrand,
                              onChanged: (value) => {
                                    ref
                                        .read(sellItemProvider.notifier)
                                        .selectBrand(value),
                                    context.back()
                                  }),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    )),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
