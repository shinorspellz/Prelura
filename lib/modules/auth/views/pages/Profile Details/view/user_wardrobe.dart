import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/display_section.dart';
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
            widget: Text(
              "35 listings",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: PreluraColors.greyColor),
            ),
            onTap: () {},
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
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text("Exeter, United Kingdom",
                              style: Theme.of(context).textTheme.bodyMedium),
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
                          const SizedBox(width: 6),
                          Text.rich(TextSpan(
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
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.delivery_dining_outlined,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text("Usually ships within 1 day",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Ratings(),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "90 ",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            "reviews",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: PreluraColors.activeColor),
                          ),
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
                    textColor: PreluraColors.white,
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
                    textColor: PreluraColors.white,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DisplaySection(),
          )
        ],
      ),
    );
  }
}
