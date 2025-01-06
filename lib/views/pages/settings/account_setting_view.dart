import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'package:prelura_app/res/utils.dart';

@RoutePage()
class AccountSettingScreen extends ConsumerStatefulWidget {
  const AccountSettingScreen({super.key});

  @override
  ConsumerState<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends ConsumerState<AccountSettingScreen> {
  DateTime? selectedDate;
  TextEditingController get fullName => TextEditingController(text: ref.read(userProvider).valueOrNull?.fullName);
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider).valueOrNull;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Account settings',
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        trailingIcon: [
          TextButton(
            onPressed: () {
              // final updatedUser = ref.read(userProvider);
              // Save functionality
            },
            child: const Text('Save', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            buildSectionHeader('Email address', user?.email ?? '', false, () {
              // Change email logic
            }, context),
            const SizedBox(height: 16),
            buildSectionHeader('Phone', user?.phone?.number, false, () {
              // Change phone number logic
            }, context, placeholder: 'Add Phone number'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
              child: Text(
                'Your phone number will only be used to help you log in. It won’t be made public or used for marketing purposes.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
            ),
            buildEditableField(context, 'Full Name', user?.fullName ?? '', (value) {}, controller: fullName),
            const SizedBox(height: 20),
            buildDropdownField(context, 'Gender', (selectedGender ?? user?.gender), ['Male', 'Female', 'Other'], (value) {
              setState(() => selectedGender = value);
              // ref
              //     .read(userProvider.notifier)
              //     .update((state) => state.copyWith(gender: value));
            }),
            const SizedBox(height: 20),
            buildEditableField(
                context,
                'Birthday',
                (selectedDate ?? user?.dob) != null
                    ? DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY).format((selectedDate ?? user!.dob!)) //user.birthday!.toString()
                    : 'mm/dd/yyyy', (value) {
              // Implement date picker here
            }, onTap: () async {
              log('Tapped');
              final date = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime(2025),
              );

              if (date == null) return;
              setState(() => selectedDate = date);
            }),
            // const SizedBox(height: 16),
            // buildSectionHeader('Email address', "Email Address", false, () {
            //   // Change email logic
            // }, context, isVerified: false),
            const SizedBox(height: 16),
            buildSectionHeader('', 'Facebook', false, () {
              // Facebook linking logic
            }, context, isLink: true),
            buildSectionHeader('', 'Google', false, () {}, context, isLink: true),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Link to your other accounts to become a trusted, verified member.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionHeader(
    String title,
    String? value,
    bool verified,
    VoidCallback onTap,
    context, {
    bool isLink = false,
    bool isVerified = false,
    String? placeholder,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
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
            Text(value ?? placeholder ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: getDefaultSize(),
                    )),
            addVerticalSpacing(4),
            if (verified && !isLink) ...[
              Row(
                children: [
                  Text("verified",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: getDefaultSize(),
                          )),
                  addHorizontalSpacing(10),
                  const Icon(
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
                    : value == null
                        ? 'Add'
                        : 'Change',
            textColor: isLink ? (verified ? Colors.grey : Colors.blue) : Colors.blue,
            bgColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ],
      ),
    );
  }

  Widget buildEditableField(
    BuildContext context,
    String label,
    String initialValue,
    ValueChanged<String> onChanged, {
    VoidCallback? onTap,
    TextEditingController? controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          addVerticalSpacing(4),
          PreluraAuthTextField(
            hintText: initialValue,
            controller: controller,
            onChanged: onChanged,
            onTap: onTap,
            enabled: onTap == null,
          ),
        ],
      ),
    );
  }

  Widget buildDropdownField(BuildContext context, String label, String? value, List<String> options, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
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
