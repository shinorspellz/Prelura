  import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/pinfeild_widget.dart';

@RoutePage()
class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key, required this.email});
  final String email;

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: 'Verify Email',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            10.verticalSpacing,
            Text(
              'Enter verification code sent to ${widget.email}',
              // style: context.textTheme.bodyLarge,
            ),
            8.verticalSpacing,
            PinfeildWidget(
              controller: controller,
            ),
            Spacer(),
            Consumer(builder: (context, ref, _) {
              return SafeArea(
                child: AppButton(
                  width: MediaQuery.sizeOf(context).width,
                  onTap: () async {
                    if (controller.text.isEmpty) {
                      context.alert('OTP code is required to proceed');
                      return;
                    }

                    log('${controller.text} ${widget.email}');
                    await ref
                        .read(userNotfierProvider.notifier)
                        .verifyEmail(controller.text, widget.email);
                    ref.read(userNotfierProvider).whenOrNull(
                        error: (e, _) => context.alert(e.toString()),
                        data: (_) {
                          context.alert('Verified email successfully');
                          Navigator.pop(context);
                        });
                  },
                  text: 'Verify',
                  loading: ref.watch(userNotfierProvider).isLoading,
                ),
              );
            }),
            10.verticalSpacing,
          ],
        ),
      ),
    );
  }
}
