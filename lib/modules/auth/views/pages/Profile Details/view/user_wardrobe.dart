import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/auth/views/widgets/rating.dart';

import '../../../../../../res/colors.dart';
import '../../../widgets/app_button.dart';
import '../widget/item_grid.dart';

class UserWardrobe extends StatelessWidget {
  const UserWardrobe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuCard(
            title: "Lonin2999",
            profilePic: true,
            onTap: () {},
            widget: Row(
              children: [
                Ratings(),
                Text("90 reviews",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Star Wardrobe Badge
                          Container(
                            child: Text("Star Wardrobe",
                                style: Theme.of(context).textTheme.bodySmall),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                                color: PreluraColors.activeColor
                                    .withOpacity(0.4), // Customize color
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          const SizedBox(height: 8),

                          // Facebook and Email Info
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outline,
                                size: 14,
                              ),
                              const SizedBox(width: 8),
                              Text("Facebook, Email",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                          SizedBox(
                            height: 2,
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
                          SizedBox(
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
                                  style: TextStyle(
                                      color: PreluraColors.activeColor,
                                      decorationColor:
                                          PreluraColors.activeColor,
                                      decoration: TextDecoration.underline),
                                  children: [
                                    TextSpan(
                                      text: " followers,",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.color,
                                          ),
                                    ),
                                  ])),
                              const SizedBox(width: 6),
                              Text.rich(TextSpan(
                                  text: "3",
                                  style: TextStyle(
                                      color: PreluraColors.activeColor,
                                      decorationColor:
                                          PreluraColors.activeColor,
                                      decoration: TextDecoration.underline),
                                  children: [
                                    TextSpan(
                                      text: " following",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.color,
                                          ),
                                    ),
                                  ])),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ],
            ),
          ),

          // Social and Additional Info Section

          const Divider(),
          Padding(
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

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop bundles",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "Get up to 5% off",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                AppButton(
                    onTap: () {
                      // Handle Create Bundle button
                    },
                    text: "Create bundle",
                    textColor: Theme.of(context).scaffoldBackgroundColor),
              ],
            ),
          ),
          const Divider(),
          Container(
              height: MediaQuery.of(context).size.height, child: ItemGrid()),
        ],
      ),
    );
  }
}
