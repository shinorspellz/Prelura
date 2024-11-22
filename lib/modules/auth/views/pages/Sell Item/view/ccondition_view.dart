import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/condition_provider.dart';

@RoutePage()
class ConditionScreen extends ConsumerWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the selected condition state
    final selectedCondition = ref.watch(conditionProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Conditions",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Divider(),
            ListTile(
              title: Text("New with Tags"),
              subtitle: Text(
                  "A brand-new unused item with tags attached or in the original pakaging"),
              trailing: Radio<String>(
                value: "New with tags",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    // Update the selected condition in the provider
                    ref.read(conditionProvider.notifier).selectCondition(value);
                    Navigator.pop(context); // Navigate back after selection
                  }
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("New wiyhout tags"),
              subtitle: Text(
                  "A brand new , unused item without tags or original packeaging"),
              trailing: Radio<String>(
                value: "New with=hout tags",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(conditionProvider.notifier).selectCondition(value);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Very good "),
              subtitle: Text(
                  "A lightly used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Very good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(conditionProvider.notifier).selectCondition(value);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Good"),
              subtitle: Text(
                  "A used item that may show imperfections and sign of wear. but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(conditionProvider.notifier).selectCondition(value);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Satisfactory"),
              subtitle: Text(
                  "A fequently used item that may have slight imperfections but still looks great. Includes photo and descriptions of any flaws in your listing."),
              trailing: Radio<String>(
                value: "Very good",
                groupValue: selectedCondition,
                onChanged: (value) {
                  if (value != null) {
                    ref.read(conditionProvider.notifier).selectCondition(value);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
