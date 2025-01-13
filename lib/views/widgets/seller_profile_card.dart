import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:sizer/sizer.dart';

import '../../model/user/user_model.dart';
import '../../res/colors.dart';
import '../../res/images.dart';
import '../../res/render_svg.dart';
import '../../res/utils.dart';
import '../shimmers/grid_shimmer.dart';
import 'rating.dart';

class SellerProfileCard extends ConsumerWidget {
  const SellerProfileCard({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          if (user.profilePictureUrl == null) ...[
            Container(
              color: Colors.grey[600],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Text(
                  user.username?.split('').first.toUpperCase() ?? '--',
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ] else ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: user.profilePictureUrl ?? "",
                    height: 16.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return ShimmerBox(
                        height: 16.h,
                        width: double.infinity,
                      );
                    },
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                  ),
                ],
              ),
            ),
          ],
          Text(
            user.username,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: getDefaultSize(),
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            user.noOfFollowers.toString(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: getDefaultSize(),
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Ratings(),
              const SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {},
                child: Text("(300)",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: PreluraColors.activeColor,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RenderSvg(svgPath: PreluraIcons.trusted_svg),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Trusted",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: PreluraColors.grey, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}