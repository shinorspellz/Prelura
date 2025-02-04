import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';

@RoutePage()
class VerifyUserScreen extends ConsumerStatefulWidget {
  final String id;

  const VerifyUserScreen({super.key, required this.id});

  @override
  ConsumerState<VerifyUserScreen> createState() => _VerifyUserScreenState();
}

class _VerifyUserScreenState extends ConsumerState<VerifyUserScreen> {
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _runVerificationMutation();
  }

  void _runVerificationMutation() async {
    try {
      ref.read(authProvider.notifier).verifyAccount(token: widget.id);

      _showSuccessDialog();
    } catch (e) {}
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Success"),
          content: const Text("User verification successful!"),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ref.read(authProvider).whenOrNull(
                data: (data) {},
                error: (e, _) {
                  log("Error: $e");
                },
                loading: () {
                  return CircularProgressIndicator();
                },
              )),
    );
  }
}
