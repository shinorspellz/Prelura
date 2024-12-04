import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../widgets/app_button.dart';

class ProductCard extends StatelessWidget {
  final String image;

  const ProductCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.asset(image, width: 60, height: 60),
            title: Text(
              "The North Face Fleece Jacket",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(4),
                Text('£ 33.00',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w800)),
                addVerticalSpacing(4),
                Text('£ 35.35 incl.     (subtotal for buyer)',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: PreluraColors.activeColor,
                        )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, bottom: 32, right: 16, top: 16),
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    onTap: () {},
                    text: "Make an Offer",
                    bgColor: Theme.of(context).scaffoldBackgroundColor,
                    borderColor: Colors.purple,
                    textColor: Colors.purple,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppButton(
                    onTap: () {},
                    text: "Buy now",
                    textColor: Theme.of(context).scaffoldBackgroundColor,
                    bgColor: Colors.purple,
                    borderColor: Colors.purple,
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
