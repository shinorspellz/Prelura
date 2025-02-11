import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/payment_method_controller.dart';
import '../../../res/colors.dart';
import '../../widgets/app_button_with_loader.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/menu_card.dart';

class PaymentMethod extends ConsumerWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(paymentMethodProvider).when(
          data: (paymentMethod) {
            return paymentMethod != null
                ? MenuCard(
                    onTap: () {},
                    rightArrow: false,
                    title:
                        "${paymentMethod.cardBrand} card ending in ${paymentMethod.last4Digits}",
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: paymentMethod.cardBrand.isNotEmpty
                          ? SvgPicture.asset(
                              detectCardBrand(paymentMethod.cardBrand)!)
                          : SizedBox.shrink(),
                    ))
                : MenuCard(
                    onTap: () => context.router.push(AddPaymentCard()),
                    title: "Create a new payment method",
                    trailingIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                  );
          },
          error: (e, stackTrace) {
            return SizedBox.shrink();
          },
          loading: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingWidget(),
              ],
            ),
          ),
        );
  }
}
