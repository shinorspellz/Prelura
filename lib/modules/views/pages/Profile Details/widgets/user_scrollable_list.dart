import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';

class UserScrollableList extends ConsumerWidget {
  const UserScrollableList({super.key, required this.user});
  final UserModel? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingCount = user?.listing ?? 0;
    final noOfFollowing = user?.noOfFollowing ?? 0;
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Theme.of(context).dividerColor, width: 1),
        top: BorderSide(color: Theme.of(context).dividerColor, width: 1),
      )),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildItem(context,
                  title: listingCount == 1 ? "Listing" : "Listings",
                  numbers: user?.listing?.toString(),
                  onTap: () {}),
              _buildItem(context,
                  title: 'Following',
                  numbers: user?.noOfFollowing.toString(), onTap: () {
                context.router
                    .push(FollowingRoute(username: user?.username ?? ""));
              }),
              _buildItem(context,
                  title: (user?.noOfFollowers != null &&
                          (noOfFollowing > 1 ||
                              user?.noOfFollowers?.toInt() == 0))
                      ? " Followers"
                      : " Follower",
                  numbers: user?.noOfFollowers.toString(), onTap: () {
                context.router
                    .push(FollowersRoute(username: user?.username ?? ""));
              }),
              _buildItem(context,
                  title: 'Reviews', numbers: "300", onTap: () {}),
            ],
          )),
    );
  }
}

Widget _buildItem(BuildContext context,
    {required String title,
    required String? numbers,
    required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      // color: Colors.red,
      width: 25.w,
      child: Column(
        children: [
          Text(
            numbers ?? "0",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
          ),
          5.verticalSpacing,
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500, color: PreluraColors.greyColor),
          ),
        ],
      ),
    ),
  );
}