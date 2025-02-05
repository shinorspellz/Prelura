import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';

import '../../res/helper_function.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(
          title: "Appearance",
          onTap: () {
            context.router.push(const AppearanceMenuRoute());
          }),
      MenuCard(
          title: "Profile details",
          onTap: () {
            context.router.push(const ProfileSettingRoute());
          }),
      MenuCard(
          title: "Account Settings",
          onTap: () {
            context.router.push(const AccountSettingRoute());
          }),
      MenuCard(
          title: "Payments",
          onTap: () {
            context.router.push(PaymentSettings());
          }),
      MenuCard(
          title: "Postage",
          onTap: () {
            context.router.push(const PostageSettings());
          }),
      // MenuCard(
      //     title: "Privacy Settings",
      //     onTap: () {
      //       context.router.push(PrivacySettingRoute());
      //     }),
      MenuCard(
          title: "Security & Privacy",
          onTap: () {
            context.router.push(SecurityMenuRoute());
          }),
      MenuCard(
          title: "Identity verification",
          onTap: () {
            context.router.push(VerifyYourIdentity());
          }),
    ];

    List menuItem2 = [
      MenuCard(
          title: "Push notifications",
          icon: const Icon(Icons.settings),
          onTap: () {
            context.router.push(NotificationSettingRoute(title: "Push"));
          }),
      MenuCard(
          title: "Email notifications",
          icon: const Icon(Icons.lock),
          onTap: () {
            context.router.push(NotificationSettingRoute(title: "Email"));
          }),
    ];
    List menuItem3 = [
      MenuCard(
          title: "About Prelura",
          icon: const Icon(Icons.info_outlined),
          onTap: () {}),
    ];
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        appbarTitle: "Settings",
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItem1.length,
            itemBuilder: (context, index) {
              return menuItem1[index];
            },
          ),
          MenuCard(
              title: "Invite Friend",
              icon: const Icon(Icons.person_add_sharp),
              onTap: () {
                context.router.push(const InviteFriend());
              }),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text("Notifications",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItem2.length,
            itemBuilder: (context, index) {
              return menuItem2[index];
            },
          ),

          const SizedBox(
            height: 20,
          ),
          // MenuCard(title: "Dark mode", subtitle: "System setting", onTap: () {}),
          MenuCard(
            title: "Log out",
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => Consumer(builder: (_, ref, __) {
                        return AlertDialog.adaptive(
                          title: const Text('Logout'),
                          content:
                              const Text('Are you sure you want to logout ?'),
                          actions: [
                            if (ref.watch(authProvider).isLoading)
                              const Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: UnconstrainedBox(
                                    child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: LoadingWidget(
                                    height: 18,
                                  ),
                                )),
                              )
                            else
                              TextButton(
                                onPressed: () async {
                                  await HelperFunction.genRef!
                                      .read(authProvider.notifier)
                                      .logout();
                                  HelperFunction.genRef!
                                      .read(categoryNotifierProvider.notifier)
                                      .clearCache();
                                  HelperFunction.genRef!
                                      .read(authProvider)
                                      .whenOrNull(
                                    data: (data) {
                                      context.router.pushAndPopUntil(
                                          LoginRoute(),
                                          predicate: (route) => false);
                                    },
                                    error: (e, _) {
                                      log(e.toString());
                                      log("stack trace : ${_.toString()}",
                                          name: "logout");
                                      context.alert("An error occurred");
                                    },
                                  );
                                },
                                child: const Text('Logout'),
                              ),
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Dismiss'),
                            ),
                          ],
                        );
                      }));
            },
            icon: Icon(
              Icons.logout,
              color: PreluraColors.error,
            ),
            textColor: PreluraColors.error,
            iconColor: PreluraColors.error,
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
