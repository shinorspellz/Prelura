import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';

import '../../widgets/app_bar.dart';

@RoutePage()
class PrivacySettingScreen extends ConsumerWidget {
  const PrivacySettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          MenuCard(title: "Delete Account", onTap: () {}),
          MenuCard(title: "Pause Account", onTap: () {})
        ],
      ),
    );
  }
}
