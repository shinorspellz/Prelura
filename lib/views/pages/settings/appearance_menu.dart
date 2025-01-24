import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';

import '../../../controller/theme_notifier.dart';
import '../../../res/utils.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/primary_switch.dart';

@RoutePage()
class AppearanceMenuScreen extends ConsumerWidget {
  const AppearanceMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Appearance",
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(
                    bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  // Use the theme's divider color
                  width: 1.0,
                ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(),
                      color: Theme.of(context).textTheme.bodyMedium?.color),
                ),
                PreluraSwitch(
                  swicthValue: themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeNotifier.toggleThemeMode();
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text("Your app's language",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
          ),
          MenuCard(
              title: "Language",
              icon: const Icon(CupertinoIcons.globe),
              subtitle: "English (EN)",
              onTap: () {}),
        ],
      ),
    );
  }
}
