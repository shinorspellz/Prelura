import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../provider/condition_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class ConditionScreen extends ConsumerWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the selected condition state
    final selectedCondition = ref.watch(conditionProvider);

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          centerTitle: true,
          appbarTitle: "Condition"),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            ListTile(
              onTap: () {
                ref
                    .read(sellItemProvider.notifier)
                    .selectCondition("New with tags");
                Navigator.pop(context);
              },
              title: const Text("New with Tags"),
              subtitle: const Text(
                  "A brand-new unused item with tags attached or in the original pakaging"),
              trailing: Radio<String>(
                value: "New with tags",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    // Update the selected condition in the provider
                    ref.read(sellItemProvider.notifier).selectCondition(value);
                    context.router.popForced();
                  }
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                ref
                    .read(sellItemProvider.notifier)
                    .selectCondition("New without tags");
                Navigator.pop(context);
              },
              title: const Text("New without tags"),
              subtitle: const Text(
                  "A brand new , unused item without tags or original packaging"),
              trailing: Radio<String>(
                value: "New with=hout tags",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(sellItemProvider.notifier).selectCondition(value);
                    context.router.popForced();
                  }
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                ref
                    .read(sellItemProvider.notifier)
                    .selectCondition("Very Good");
                Navigator.pop(context);
              },
              title: const Text("Very good "),
              subtitle: const Text(
                  "A lightly used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Very good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(sellItemProvider.notifier).selectCondition(value);
                    context.router.popForced();
                  }
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                ref.read(sellItemProvider.notifier).selectCondition("Good");
                Navigator.pop(context);
              },
              title: const Text("Good"),
              subtitle: const Text(
                  "A used item that may show imperfections and sign of wear. but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(sellItemProvider.notifier).selectCondition(value);
                    context.router.popForced();
                  }
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: const Text("Satisfactory"),
              onTap: () {
                ref
                    .read(sellItemProvider.notifier)
                    .selectCondition("Satisfactory");
                Navigator.pop(context);
              },
              subtitle: const Text(
                  "A fequently used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Very good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(sellItemProvider.notifier).selectCondition(value);
                    context.router.popForced();
                  }
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
