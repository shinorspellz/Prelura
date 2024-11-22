import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const ProductDetailRoute());
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wrap the Stack inside a ClipRRect to constrain the image
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(12), // Optional: rounded corners
              child: Stack(
                children: [
                  Image.asset(
                    PreluraIcons.Image,
                    height: 160,
                    width: double.infinity, // Ensure the image fills the width
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    right: 15,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: PreluraColors.blackCardColor,
                        borderRadius:
                            BorderRadius.circular(12), // Circular radius
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border_outlined,
                              size: 14, color: PreluraColors.white),
                          const SizedBox(width: 5),
                          Text(
                            "14",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: PreluraColors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8), // Optional: Add space between image and text
            Text(
              "Anthropologie",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Very Good",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "#5.00",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "#5.99 incl",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: PreluraColors.activeColor),
            ),
          ],
        ),
      ),
    );
  }
}
