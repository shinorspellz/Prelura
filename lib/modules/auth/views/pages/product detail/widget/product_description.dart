import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../res/colors.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool isDescriptionExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 10.sp),
                ),
                SizedBox(
                  height: 12,
                ),
                Text.rich(
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          isDescriptionExpanded = !isDescriptionExpanded;
                        });
                      },
                    children: [
                      TextSpan(
                        text: isDescriptionExpanded
                            ? "worn a couple times but left tag in to resell. "
                                "I have the authentication proof feel free to ask for it. "
                                "Consumer protection laws do not apply to your purchases from other consumers. "
                                "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                                "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                                "For more details, please review the full legal disclaimer."
                            : "worn a couple times but left tag in to resell. "
                                "I have the authentication proof feel free to ask for it...",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: isDescriptionExpanded ? " See less" : " See more",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.shield,
                  color: PreluraColors.activeColor,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                          text: "Buyer Protection fee\n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              "Our Buyer Protection is added for a fee to every purchase made with the “Buy now” button. Buyer Protection includes our ",
                        ),
                        TextSpan(
                          text: "Refund Policy.",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Postage",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "from #0.00",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: PreluraColors.activeColor.withOpacity(0.2)),
                  child: Text(
                    "Get discounts of up to 100% off for pick-up point delivery. "
                    "See further details at checkout.",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w500),
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
