import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/notification_provider.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/switch_with_text.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../model/notification/notification_model.dart';
import '../../widgets/app_bar.dart';

@RoutePage()
class NotificationSettingScreen extends ConsumerStatefulWidget {
  const NotificationSettingScreen({super.key, required this.title});
  final String title;
  static final ScrollController scrollController = ScrollController();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends ConsumerState<NotificationSettingScreen> {
  final controller = NotificationSettingScreen.scrollController;
  @override
  Widget build(BuildContext context) {
    final notificationPreferences = ref.watch(notificationPreferenceProvider).valueOrNull;
    final emailnotificationPreferences = widget.title == "Email" ? notificationPreferences?.emailNotifications : notificationPreferences?.inappNotifications;

    bool isDisabled(String title, NotificationPreference? preferences) {
      if (title != "Email") {
        // Disable if push notifications are off
        return preferences?.isPushNotification == false;
      } else {
        // Disable if email notifications are off
        return preferences?.isEmailNotification == false;
      }
    }

    log(" email notification is ${notificationPreferences?.isEmailNotification.toString()}");
    log(" push notification is ${notificationPreferences?.isPushNotification.toString()}");
    log(" title is ${widget.title}");
    final notifier = ref.read(updateNotificationPreferenceProvider.notifier);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "${widget.title} Notification Settings",
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(notificationPreferenceProvider.future),
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.title == "Email") ...[
                PreluraSwitchWithText(
                  titleText: "Email Notifications",
                  value: notificationPreferences?.isEmailNotification,
                  onChanged: (value) async {
                    await notifier.updateNotificationPreference(isEmailNotification: value, updateEmailPreferences: widget.title == "Email");
                    ref.invalidate(notificationPreferenceProvider);
                  },
                ),
              ] else ...[
                PreluraSwitchWithText(
                  titleText: "Push Notifications",
                  value: notificationPreferences?.isPushNotification,
                  onChanged: (value) async {
                    await notifier.updateNotificationPreference(isPushNotification: value, updateEmailPreferences: widget.title == "Email");
                    ref.invalidate(notificationPreferenceProvider);
                  },
                ),
              ],
              addVerticalSpacing(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "General",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: PreluraColors.primaryColor),
                ),
              ),
              addVerticalSpacing(6),

// Usage inside PreluraSwitchWithText
              PreluraSwitchWithText(
                titleText: "Likes",
                value: emailnotificationPreferences?.likes,
                disabled: isDisabled(widget.title, notificationPreferences),
                onChanged: (value) {
                  notifier.updateNotificationPreference(likes: value, updateEmailPreferences: widget.title == "Email");
                  ref.invalidate(notificationPreferenceProvider);
                },
              ),
              PreluraSwitchWithText(
                titleText: "Messages",
                value: emailnotificationPreferences?.messages,
                disabled: isDisabled(widget.title, notificationPreferences),
                onChanged: (value) {
                  notifier.updateNotificationPreference(messages: value, updateEmailPreferences: widget.title == "Email");
                  ref.invalidate(notificationPreferenceProvider);
                },
              ),
              PreluraSwitchWithText(
                titleText: "New Followers",
                value: emailnotificationPreferences?.newFollowers,
                disabled: isDisabled(widget.title, notificationPreferences),
                onChanged: (value) {
                  notifier.updateNotificationPreference(newFollowers: value, updateEmailPreferences: widget.title == "Email");
                  ref.invalidate(notificationPreferenceProvider);
                },
              ),
              PreluraSwitchWithText(
                titleText: "Profile View",
                value: emailnotificationPreferences?.profileView,
                disabled: isDisabled(widget.title, notificationPreferences),
                onChanged: (value) async {
                  await notifier.updateNotificationPreference(profileView: value, updateEmailPreferences: widget.title == "Email");
                  ref.invalidate(notificationPreferenceProvider);
                },
              ),
              SizedBox(
                height: 100.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
