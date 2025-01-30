import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/profile_picture.dart';
import 'package:prelura_app/views/widgets/rating.dart';

class SellerCard extends StatelessWidget {
  const SellerCard(
      {super.key, required this.name, required this.profilePicture});
  final String name;
  final String? profilePicture;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ProfilePictureWidget(
            height: 45,
            width: 45,
            profilePicture: profilePicture,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).dividerColor, // Border color
                      width: 1.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, I'm $name",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      addVerticalSpacing(4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ratings(),
                          addHorizontalSpacing(10),
                          Text(
                            ' (90 reviews)',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                      addVerticalSpacing(8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
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
                      addVerticalSpacing(4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
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
                ),
                addVerticalSpacing(8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).dividerColor, // Border color
                      width: 1.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('£ 21.00'),
                          addHorizontalSpacing(10),
                          Text(
                            '£ 25.00',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      addVerticalSpacing(2),
                      Text(
                        'Declined',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      addVerticalSpacing(12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: AppButton(
                          onTap: () {},
                          text: 'Offer Your Price',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
