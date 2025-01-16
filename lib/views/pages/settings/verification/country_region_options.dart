import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'county_info.dart';

@RoutePage()
class CountryRegionsView extends ConsumerStatefulWidget {
  final VoidCallback? onTap;
  const CountryRegionsView({required this.onTap, super.key});

  @override
  ConsumerState<CountryRegionsView> createState() => _CountryRegionsViewState();
}

class _CountryRegionsViewState extends ConsumerState<CountryRegionsView> {
  List<Country> defaultCountries = Countries.list;
  List<Country> filteredCountries = Countries.list;
  String typingText = "";
  TextEditingController typingTextController = TextEditingController();
  changeTypingState(String val) {
    typingText = val;

    List<Country>? iterable = [];

    if (typingText.isNotEmpty) {
      iterable = defaultCountries
          .where((element) =>
              element.name.toLowerCase().contains(typingText.toLowerCase()))
          .toList(growable: true);
      filteredCountries = iterable;
    } else {
      filteredCountries = defaultCountries;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "ID country or region",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Searchwidget(
              padding: EdgeInsets.zero,
              obscureText: false,
              shouldReadOnly: false,
              hintText: "Search country",
              enabled: true,
              // controller: ref.read(searchTextController),
              showInputBorder: true,
              autofocus: false,
              cancelButton: true,
              onFocused: (val) {
                // showSearchInfoField = val;
                // setState(() {});
              },
              onChanged: (val) {
                changeTypingState(val);
                // // searchQuery = val;
                // ref
                //     .read(searchHistoryQueryProvider.notifier)
                //     .state = val;
                // setState(() {});
              },
            ),
            // VWidgetsPrimaryTextFieldWithTitle(
            //   hintText: "Search country here",
            //   onChanged: (val) {
            //     changeTypingState(val);
            //   },
            //   controller: typingTextController,
            // ),
            addVerticalSpacing(10),
            Expanded(
              child: ListView.builder(
                itemCount: typingText.isEmpty
                    ? defaultCountries.length
                    : filteredCountries.length,
                itemBuilder: (_, index) {
                  Country country = filteredCountries[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Container(
                          height: 40,
                          color: Colors.transparent,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            country.name,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  // color: Theme.of(context).primaryColor
                                ),
                          ),
                        ),
                      ),
                      buildDivider(context),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
