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
            rightArrow: false,
            borderbottom: false,
            title: "Lonin2999",
            profilePic: true,
            onTap: () {},
            widget: Row(
              children: [
                const Ratings(),
                Text("90 reviews",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              style: const TextStyle(
                                  color: PreluraColors.activeColor,
                                  decorationColor: PreluraColors.activeColor,
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

          const SizedBox(
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
          SizedBox(
              height: MediaQuery.of(context).size.height, child: ItemGrid()),
        ],
      ),
    );
  }
}
