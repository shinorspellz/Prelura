import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';

import '../../../controller/theme_notifier.dart';
import '../../../res/utils.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/primary_switch.dart';
import '../../widgets/switch_with_text.dart';

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
          PreluraSwitchWithText(
            titleText: "Use System Settings",
            value: themeMode == ThemeMode.system,
            onChanged: (value) {
              themeNotifier.useSystemSetting();
            },
          ),
          PreluraSwitchWithText(
            titleText: "Dark Mode",
            value: themeMode == ThemeMode.dark,
            disabled: themeMode == ThemeMode.system,
            onChanged: (value) {
              themeNotifier.toggleThemeMode();
            },
          ),
          16.verticalSpacing,
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
