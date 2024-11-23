import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/SearchWidget.dart';
import '../provider/brand_provider.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedBrand = ref.watch(selectedBrandProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Brands",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                ListTile(
                  title: Text('Suggested'),
                  dense: true,
                ),
                ...suggestedBrands.map((brand) => ListTile(
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
                    )),
                ListTile(
                  title: Text('Popular brands'),
                  dense: true,
                ),
                ...popularBrands.map((brand) => ListTile(
                      title: Text(brand),
                      trailing: Radio<String>(
                          value: brand,
                          groupValue: selectedBrand,
                          onChanged: (value) => {
                                ref
                                    .read(selectedBrandProvider.notifier)
                                    .selectBrand(value),
                                context.back()
                              }),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
