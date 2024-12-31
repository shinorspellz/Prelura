import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/auth/auth_controller.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/res/colors.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(
          title: "Vacation Mode",
          onTap: () {
            context.router.push(HolidayModeRoute());
          }),
      MenuCard(
          title: "Profile details",
          onTap: () {
            context.router.push(const ProfileSettingRoute());
          }),
      MenuCard(
          title: "Account Setting",
          onTap: () {
            context.router.push(const AccountSettingRoute());
          }),
      MenuCard(title: "Payments", onTap: () {}),
      MenuCard(title: "Postage", onTap: () {}),
      MenuCard(title: "Security", onTap: () {}),
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
              onTap: () {}),
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
          Container(
            padding: const EdgeInsets.all(16),
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
                                  child: LoadingWidget(),
                                )),
                              )
                            else
                              TextButton(
                                  onPressed: () async {
                                    await ref
                                        .read(authProvider.notifier)
                                        .logout();
                                    ref.read(authProvider).whenOrNull(
                                          error: (e, _) =>
                                              context.alert(e.toString()),
                                        );
                                  },
                                  child: const Text('Logout')),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Dismiss')),
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
