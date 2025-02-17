import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/primary_switch.dart';
import 'package:sizer/sizer.dart';

import '../../res/colors.dart';
import '../../res/helper_function.dart';
import '../../res/utils.dart';

@RoutePage()
class HolidayModeScreen extends ConsumerWidget {
  const HolidayModeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVacationMode = ref.watch(userProvider).value?.isVacationMode;
    final username = ref.watch(userProvider).value?.username;
    return Scaffold(
      appBar: PreluraAppBar(
        centerTitle: true,
        appbarTitle: "Vacation Mode",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onLongPress: () {},
                  child: Row(
                    children: [
                      Text(
                        "Vacation Mode",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                PreluraSwitch(
                    swicthValue: isVacationMode ?? false,
                    onChanged: (value) async {
                      await ref
                          .read(userNotfierProvider.notifier)
                          .updateProfile(isVacationMode: value);
                      ref.read(userNotfierProvider).whenOrNull(
                            error: (e, _) => context
                                .alert('An error occured while updating'),
                            data: (_) {
                              ref.invalidate(userProvider);
                              ref.refresh(userProvider.future);
                              ref.invalidate(userProduct(username));
                              HelperFunction.context = context;
                              context.alert('Vacation Mode updated!');
                            },
                          );
                    }),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: PreluraColors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                  "Note: Turning on vacation will hide your items from all catalogues",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: getDefaultSize(),
                      fontWeight: FontWeight.w600,
                      color: PreluraColors.grey))),
        ]),
      ),
    );
  }
}
