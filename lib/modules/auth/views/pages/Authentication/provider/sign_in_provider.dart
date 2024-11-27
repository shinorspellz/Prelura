import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginState {
  final bool isLoading;
  final bool obscureText;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginState({
    this.isLoading = false,
    this.obscureText = true,
    required this.emailController,
    required this.passwordController,
  });

  LoginState copyWith({
    bool? isLoading,
    bool? obscureText,
    TextEditingController? emailController,
    TextEditingController? passwordController,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      obscureText: obscureText ?? this.obscureText,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
    );
  }
}

class LoginController extends StateNotifier<LoginState> {
  final Ref ref;

  LoginController(this.ref)
      : super(
          LoginState(
            emailController: TextEditingController(),
            passwordController: TextEditingController(),
          ),
        );

  void toggleObscureText() {
    state = state.copyWith(obscureText: !state.obscureText);
  }

  Future<void> signIn({
    required BuildContext context,
  }) async {
    final email = state.emailController.text;
    final password = state.passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email and password are required.")),
      );
      return;
    }

    try {
      state = state.copyWith(isLoading: true);
      await Future.delayed(const Duration(seconds: 2)); // Simulate API call
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login failed. Try again.")),
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> socialSignIn({
    required BuildContext context,
    required String provider,
  }) async {
    try {
      state = state.copyWith(isLoading: true);
      await Future.delayed(const Duration(seconds: 2)); // Simulate API call
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Social login failed. Try again.")),
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  @override
  void dispose() {
    state.emailController.dispose();
    state.passwordController.dispose();
    super.dispose();
  }
}

final loginProvider = StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController(ref);
});
