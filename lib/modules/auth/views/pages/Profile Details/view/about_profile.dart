import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../../../res/images.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image Section
            Image.asset(
              PreluraIcons.Image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              "stanley1969",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: PreluraColors.activeColor.withOpacity(0.2),
                    ),
                    child: const Icon(
                      Icons.person_add,
                      color: PreluraColors.activeColor,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Star Wardrobe Award",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 17),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Earned by sellers who frequently upload items.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Verified Info Section
            const Divider(),
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline,
                ),
                const SizedBox(width: 8),
                Text(
                  "Facebook",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline,
                ),
                const SizedBox(width: 8),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 14,
                ),
                const SizedBox(width: 8),
                Text("Exeter, United Kingdom",
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const Icon(
                  Icons.timer,
                  size: 14,
                ),
                const SizedBox(width: 8),
                Text("Last Seen, 2 hours ago",
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const Icon(
                  Icons.wifi,
                  size: 14,
                ),
                const SizedBox(width: 8),
                Text.rich(TextSpan(
                    text: "3",
                    style: const TextStyle(
                        color: PreluraColors.activeColor,
                        decorationColor: PreluraColors.activeColor,
                        decoration: TextDecoration.underline),
                    children: [
                      TextSpan(
                        text: " followers,",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                            ),
                      ),
                    ])),
                const SizedBox(width: 6),
                Text.rich(TextSpan(
                    text: "3",
                    style: const TextStyle(
                        color: PreluraColors.activeColor,
                        decorationColor: PreluraColors.activeColor,
                        decoration: TextDecoration.underline),
                    children: [
                      TextSpan(
                        text: " following",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                            ),
                      ),
                    ])),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: AppButton(
                onTap: () {
                  // Handle Message button
                },
                text: "Message",
                bgColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: AppButton(
                onTap: () {
                  // Handle Follow button
                },
                text: "Follow",
                textColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
