import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../../../core/router/router.gr.dart';
import '../../../../../../res/images.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image Section
            Image.asset(
              PreluraIcons.mugShot,
              height: MediaQuery.of(context).size.width,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "stanley1969",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 26),
                  ),
                  Divider(),
                  const SizedBox(height: 4),
                  Text(
                    "Passionate about giving clothes a second chance, I specialize in curating quality"
                    " second-hand fashion that’s stylish, sustainable, and affordable. From timeless classics to trendy finds, I offer"
                    " a range of pre-loved pieces that suit every style and budget. Whether you’re looking to refresh your wardrobe or "
                    "find unique gems, my shop is your destination for eco-conscious fashion. Every item is handpicked with care to ensure"
                    "you get the best of preloved fashion.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 14,
                      ),
                      const SizedBox(width: 8),
                      Text("Exeter, United Kingdom",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.wifi,
                        size: 14,
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          context.router.push(FollowersRoute());
                        },
                        child: Text.rich(TextSpan(
                            text: "3",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.color,
                                ),
                            children: [
                              TextSpan(
                                text: " followers,",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: PreluraColors.activeColor,
                                    ),
                              ),
                            ])),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          context.router.push(FollowingRoute());
                        },
                        child: Text.rich(TextSpan(
                            text: "3",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.color,
                                ),
                            children: [
                              TextSpan(
                                text: " following",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: PreluraColors.activeColor,
                                    ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
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
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, bottom: 32, right: 16, top: 16),
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
