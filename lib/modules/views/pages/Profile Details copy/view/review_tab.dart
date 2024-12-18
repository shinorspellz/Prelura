import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/rating.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Section
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, top: 24, right: 16, bottom: 10),
          child: Column(
            children: [
              Text(
                "5.0",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ratings(),
                  SizedBox(width: 8),
                  Text("(90)", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Member reviews (54)",
                      style: Theme.of(context).textTheme.bodyMedium),
                  const Row(
                    children: [
                      Text("5.0"),
                      SizedBox(
                        width: 3,
                      ),
                      Ratings(
                        count: 1,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Automatic reviews (54)",
                      style: Theme.of(context).textTheme.bodyMedium),
                  const Row(
                    children: [
                      Text("5.0"),
                      SizedBox(
                        width: 3,
                      ),
                      Ratings(
                        count: 1,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text("How reviews work",
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: PreluraColors.activeColor)),
        ),
        const Divider(
          thickness: 1,
        ),

        // Filter Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              filterButton("All", true, context),
              const SizedBox(
                width: 8,
              ),
              filterButton("From members", false, context),
              const SizedBox(
                width: 8,
              ),
              filterButton("Automatic", false, context),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Reviews List
        Expanded(
          child: ListView.builder(
            itemCount: 5, // Replace with your data count
            itemBuilder: (context, index) {
              return reviewCard(context);
            },
          ),
        ),
      ],
    );
  }

  Widget filterButton(String text, bool isSelected, context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
            color: isSelected
                ? PreluraColors.activeColor.withOpacity(0.4)
                : Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(
              color: isSelected
                  ? PreluraColors.activeColor.withOpacity(0.4)
                  : PreluraColors.greyColor,
            ),
            borderRadius: BorderRadius.circular(8)),
        child: Text(text, style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }

  Widget reviewCard(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
              bottom:
                  BorderSide(color: Theme.of(context).dividerColor, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(17.5),
                child: Image.asset(
                  PreluraIcons.mugShot,
                  height: 35,
                  width: 35,
                ), // Use user's initials
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("stacey309",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text("3 hours ago",
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Ratings(),
                    SizedBox(height: 4),
                    Text("Great thank you 😊"),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
