import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/user/user_controller.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../widgets/app_button.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/seller_profile_card.dart';

Widget TopShop(BuildContext context, WidgetRef ref) {
  return ref.watch(recommendedSellersProvider).when(
    data: (users) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildDivider(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Top Shops",
                textAlign: TextAlign.left,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: getDefaultSize(size: 16),
                ),
              ),
              6.verticalSpacing,
              Text(
                "Buy from trusted and popular vendors",
                textAlign: TextAlign.left,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: PreluraColors.grey,
                  fontSize: getDefaultSize(),
                ),
              ),
              8.verticalSpacing,
            ]),
          ),
          AspectRatio(
            aspectRatio: 1.75,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => 20.horizontalSpacing,
              itemBuilder: (context, index) => SizedBox(
                width: 130,
                child: SellerProfileCard(user: users[index].seller),
              ),
              itemCount: users.length,
            ),
          ),
          buildDivider(context),
        ],
      );
    },
    error: (error, stackTrace) {
      // Handle error state
      return ErrorPlaceholder(
        error: "An error occured",
        onTap: () {
          ref.invalidate(recommendedSellersProvider);
        },
      );
    },
    loading: () {
      // Handle loading state
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child:
                CupertinoActivityIndicator(color: PreluraColors.primaryColor)),
      );
    },
  );
}
