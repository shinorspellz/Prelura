import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/res/colors.dart';

import '../../controller/product/product_provider.dart';

class BrandTextWidget extends ConsumerWidget {
  BrandTextWidget(
      {super.key,
      this.brand,
      this.customBrand,
      this.fontSize,
      this.isSelectable = true});
  final Brand? brand;
  String? customBrand;
  double? fontSize;
  bool isSelectable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (isSelectable) {
          if (brand == null && customBrand == null) return;

          context.pushRoute(ProductsByBrandRoute(
              title: brand?.name,
              id: (brand?.id)?.toInt(),
              customBrand: customBrand));
        }
      },
      child: Text(
        customBrand ?? brand?.name ?? '',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: PreluraColors.activeColor,
            fontWeight: FontWeight.w500,
            fontSize: fontSize),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
