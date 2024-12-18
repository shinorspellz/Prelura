import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/res/colors.dart';

class BrandTextWidget extends StatelessWidget {
  BrandTextWidget({super.key, this.brand, this.customBrand});
  final Brand? brand;
  String? customBrand;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (brand == null) return;
        context.pushRoute(ProductsByBrandRoute(title: brand!.name, id: (brand!.id).toInt()));
      },
      child: Text(
        brand?.name ?? customBrand ?? '',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PreluraColors.activeColor,
              fontWeight: FontWeight.w500,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
