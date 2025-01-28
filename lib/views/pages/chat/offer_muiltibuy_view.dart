import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/chat/widgets/offer_product_card.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../model/chat/offer_info.dart';

@RoutePage()
class OfferMuiltibuyView extends StatelessWidget {
  final List<Product> products;
  const OfferMuiltibuyView({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: PreluraAppBar(
          centerTitle: true,
          appbarTitle: "Multi-buy items",
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
        ),
        body: SizedBox(
          height: deviceSize.height,
          width: deviceSize.width,
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (cxt, index) {
              final Product productInfo = products[index];
              return ProductCard(productInfo: productInfo);
            },
            separatorBuilder: (_, __) => buildDivider(context),
            itemCount: products.length,
          ),
        )

        // Container(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   height: 70,
        //   width: deviceSize.width,
        //   child: Row(children: [
        //     ImageBuilder(
        //       imageUrl: productInfo.imagesUrl!.first.url!,
        //     ),
        //     addHorizontalSpacing(8),
        //     Expanded(
        //         child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //           Text(
        //             "${productInfo.name}",
        //             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //                   fontWeight: FontWeight.w600,
        //                   fontSize: getDefaultSize(size: 16),
        //                 ),
        //           ),
        //           Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "${productInfo.brand["name"]}",
        //                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //                         color: PreluraColors.grey,
        //                         fontWeight: FontWeight.w600,
        //                         fontSize: getDefaultSize(size: 16),
        //                       ),
        //                 ),
        //                 Text(
        //                   " £${productInfo.price.toString().formatCurrency()}",
        //                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        //                         fontWeight: FontWeight.w600,
        //                         fontSize: 16,
        //                       ),
        //                 ),
        //               ]),
        //         ]))
        //   ]),
        // ),
        );
  }
}

class ProductCard extends StatelessWidget {
  final Product productInfo;
  const ProductCard({super.key, required this.productInfo});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 70,
      width: deviceSize.width,
      child: Row(children: [
        ImageBuilder(
          imageUrl: productInfo.imagesUrl!.first.url!,
        ),
        addHorizontalSpacing(8),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                "${productInfo.name}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(size: 16),
                    ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "${productInfo.brand["name"]}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: PreluraColors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: getDefaultSize(size: 16),
                      ),
                ),
                Text(
                  " £${productInfo.price.toString().formatCurrency()}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                ),
              ]),
            ]))
      ]),
    );
  }
}
