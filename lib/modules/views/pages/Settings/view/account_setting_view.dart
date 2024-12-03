import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';
import '../provider/user_provider.dart';

@RoutePage()
class AccountSettingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Account settings',
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        trailingIcon: [
          TextButton(
            onPressed: () {
              final updatedUser = ref.read(userProvider);
              // Save functionality
            },
            child: Text('Save', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            buildSectionHeader(
                'Email address', user.email, user.isEmailVerified, () {
              // Change email logic
            }, context),
            SizedBox(height: 16),
            buildSectionHeader('Phone', user.phone, user.isPhoneVerified, () {
              // Change phone number logic
            }, context),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
              child: Text(
                'Your phone number will only be used to help you log in. It won’t be made public or used for marketing purposes.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey),
              ),
            ),
            buildEditableField(context, 'Full Name', user.fullName, (value) {
              ref
                  .read(userProvider.notifier)
                  .update((state) => state.copyWith(fullName: value));
            }),
            SizedBox(height: 20),
            buildDropdownField(
                context, 'Gender', user.gender, ['Male', 'Female', 'Other'],
                (value) {
              ref
                  .read(userProvider.notifier)
                  .update((state) => state.copyWith(gender: value));
            }),
            SizedBox(height: 20),
            buildEditableField(
                context,
                'Birthday',
                user.birthday != null
                    ? user.birthday!.toString()
                    : 'mm/dd/yyyy', (value) {
              // Implement date picker here
            }),
            SizedBox(height: 16),
            buildSectionHeader('Email address', "Email Address", false, () {
              // Change email logic
            }, context, isVerified: user.isEmailVerified),
            SizedBox(height: 16),
            buildSectionHeader('', 'Facebook', user.isFacebookLinked, () {
              // Facebook linking logic
            }, context, isLink: true),
            buildSectionHeader(
                '', 'Google', user.isGoogleLinked, () {}, context,
                isLink: true),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Link to your other accounts to become a trusted, verified member.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionHeader(
      String title, String value, bool verified, VoidCallback onTap, context,
      {bool isLink = false, bool isVerified = false}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(value,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            addVerticalSpacing(4),
            if (verified && !isLink) ...[
              Row(
                children: [
                  Text("verified",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w300)),
                  addHorizontalSpacing(10),
                  Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ]
          ]),
          AppButton(
            width: 80,
            onTap: onTap,
            isDisabled: isVerified,
            text: isLink
                ? (verified ? 'Linked' : 'Link')
                : isVerified
                    ? "verified"
                    : 'Change',
            textColor:
                isLink ? (verified ? Colors.grey : Colors.blue) : Colors.blue,
            bgColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ],
      ),
    );
  }

  Widget buildEditableField(BuildContext context, String label,
      String initialValue, ValueChanged<String> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          addVerticalSpacing(4),
          PreluraAuthTextField(
            hintText: initialValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget buildDropdownField(BuildContext context, String label, String value,
      List<String> options, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          DropdownButton<String>(
            value: value,
            isExpanded: true,
            onChanged: onChanged,
            items: options.map((String option) {
              return DropdownMenuItem(
                key: Key(label),
                value: option,
                child: Text(option),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
