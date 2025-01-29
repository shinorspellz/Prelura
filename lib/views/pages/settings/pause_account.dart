import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/switch_with_text.dart';

import '../../widgets/app_bar.dart';

@RoutePage()
class PauseAccount extends ConsumerWidget {
  const PauseAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Pause account",
        centerTitle: true,
      ),
      body: Column(
        children: [
          PreluraSwitchWithText(
            titleText: "Pause your account",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
