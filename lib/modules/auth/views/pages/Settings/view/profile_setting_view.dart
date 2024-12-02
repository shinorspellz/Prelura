import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/auth/views/widgets/gap.dart';
import '../../../../../../res/images.dart';
import '../../../../../../res/render_svg.dart';

// StateNotifier for managing obscureText state
class ObscureTextNotifier extends StateNotifier<bool> {
  ObscureTextNotifier() : super(true); // Initially, obscureText is true

  void toggle() => state = !state;
}

// Provider for the ObscureTextNotifier
final obscureTextProvider = StateNotifierProvider<ObscureTextNotifier, bool>(
    (ref) => ObscureTextNotifier());

@RoutePage()
class ProfileSettingScreen extends ConsumerWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureText = ref.watch(obscureTextProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Profile Settings",
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Optional padding for better UI
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAuthTextField(
              context,
              label: 'Name',
              hintText: 'e.g. Prelura App',
            ),
            addVerticalSpacing(16),
            _buildAuthTextField(
              context,
              label: 'Username',
              hintText: 'e.g. prelura_app',
            ),
            addVerticalSpacing(16),
            _buildAuthTextField(
              context,
              label: 'Email',
              hintText: 'e.g. app@prelura.com',
            ),
            addVerticalSpacing(16),
            PreluraAuthTextField(
              label: 'Password',
              labelStyle: _labelStyle(context),
              hintText: '*********',
              hintStyle: _hintStyle(context),
              obscureText: obscureText,
              onChanged: (value) {},
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () =>
                    ref.read(obscureTextProvider.notifier).toggle(),
                icon: RenderSvg(
                  svgPath: obscureText
                      ? PreluraIcons.eyeIcon
                      : PreluraIcons.eyeSlashOutline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAuthTextField(
    BuildContext context, {
    required String label,
    required String hintText,
  }) {
    return PreluraAuthTextField(
      label: label,
      labelStyle: _labelStyle(context),
      hintText: hintText,
      hintStyle: _hintStyle(context),
      onChanged: (value) {},
    );
  }

  TextStyle? _labelStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14);
  }

  TextStyle? _hintStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 18);
  }
}
