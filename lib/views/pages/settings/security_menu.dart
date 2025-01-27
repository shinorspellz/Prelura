import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';

import '../../widgets/app_bar.dart';

@RoutePage()
class SecurityMenuScreen extends ConsumerWidget {
  const SecurityMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Security & Privacy",
        centerTitle: true,
      ),
      body: Column(
        children: [
          MenuCard(
              title: "Reset Password",
              onTap: () {
                context.router.push(ResetPasswordRoute());
              }),
          MenuCard(title: "Delete Account", onTap: () {}),
          MenuCard(title: "Pause Account", onTap: () {})
        ],
      ),
    );
  }
}
