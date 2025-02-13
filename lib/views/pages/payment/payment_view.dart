import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/order_provider.dart';
import 'package:prelura_app/controller/product/payment_provider.dart';
import 'package:prelura_app/controller/user/multi_buy_discount_provider.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/model/user/user_model.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/pages/payment/paymentMethod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/payment_method_controller.dart';
import '../../../res/utils.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/profile_picture.dart';
import '../search/search_screen.dart';

// State provider from earlier
final selectedDeliveryOptionProvider = StateProvider<int>((ref) => 1);

@RoutePage()
class PaymentScreen extends ConsumerWidget {
  final List<ProductModel> products;
  final double? totalPrice;
  final UserModel? user;
  const PaymentScreen({
    super.key,
    required this.products,
    this.totalPrice,
    this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProductModel productInfo = products.first;
    // Read the current delivery option
    final selectedDeliveryOption = ref.watch(selectedDeliveryOptionProvider);
    final UserModel? user = ref.watch(userProvider).value;
    final sellerDiscount =
        ref.watch(userMultiBuyDiscountProvider(user?.id)).valueOrNull;

    log("sellerDiscoun: ${sellerDiscount}", name: "Payment view");

    int updateCalculatedDiscount() {
      if (sellerDiscount != null && sellerDiscount!.isNotEmpty) {
        int result = 0;
        if (products.length > 10) {
          result = double.parse(sellerDiscount!
                  .firstWhere((discount) => discount.minItems == 10)
                  .discountValue
                  .toString())
              .toInt();
          return result;
        }
        if (products.length > 4) {
          result = double.parse(sellerDiscount!
                  .firstWhere((discount) => discount.minItems == 5)
                  .discountValue
                  .toString())
              .toInt();

          return result;
        }
        if (products.length <= 4) {
          result = double.parse(sellerDiscount!
                  .firstWhere((discount) => discount.minItems == 2)
                  .discountValue
                  .toString())
              .toInt();
          return result;
        }
        return result;
      } else {
        return 0;
      }
    }

    int calculatedDiscount = updateCalculatedDiscount();
    double calculateTotalPrice() {
      return totalPrice! - (totalPrice! * (calculatedDiscount / 100));
    }

    double calculateMultiBuyDiscountPrice() {
      return (totalPrice! * (calculatedDiscount / 100));
    }

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Payment",
        leadingIcon: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).iconTheme.color ?? Colors.white,
          ),
          onPressed: () {
            context.router.popForced();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 130),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Address",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: getDefaultSize(),
                      )),
            ),
            MenuCard(
              title: user?.location?.locationName ?? "",
              trailingIcon: Icon(
                Icons.edit,
                size: 16,
              ),
              onTap: () {
                // Handle edit address logic
                context.router.push(AccountSettingRoute());
              },
            ),
            SizedBox(height: 16),

            // Delivery Options
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Delivery Option",
                  style: TextStyle(color: Colors.white)),
            ),
            PreluraCheckBox(
              icon: const Icon(
                Icons.location_on_outlined,
                size: 16,
              ),
              isChecked: selectedDeliveryOption == 1,
              onChanged: (value) {
                ref.read(selectedDeliveryOptionProvider.notifier).state = 1;
              },
              title: "Ship to pick-up point",
              subtitle: "£2.29",
            ),
            PreluraCheckBox(
              isChecked: selectedDeliveryOption == 2,
              icon: Icon(Icons.home, size: 16),
              onChanged: (value) {
                ref.read(selectedDeliveryOptionProvider.notifier).state = 2;
              },
              title: "Ship to home",
              subtitle: "£2.99",
            ),
            SizedBox(height: 16),

            // Delivery Details
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context)
                      .dividerColor, // Use the theme's divider color
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        final user = ref.read(userProvider).valueOrNull;

                        if (user?.username == productInfo.seller.username) {
                          context.router.push(UserProfileDetailsRoute());
                        } else {
                          context.router.push(ProfileDetailsRoute(
                              username: productInfo.seller.username));
                        }
                      },
                      child: Row(
                        children: [
                          ProfilePictureWidget(
                            profilePicture:
                                productInfo.seller.profilePictureUrl,
                            username: productInfo.seller.username,
                            width: 40,
                            height: 40,
                          ),
                          addHorizontalSpacing(8),
                          Text(
                            productInfo.seller.username,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("£2.29",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                )),
                        GestureDetector(
                          // padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.edit,
                            size: 16,
                          ),
                          onTap: () {
                            // Handle edit delivery details
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.factory,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(user?.location?.locationName ?? "One Stop",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                )),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                            user?.location?.locationName ??
                                "30 New Bank Road, BB2 6JW, Blackburn",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                )),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(
                          Icons.timelapse_rounded,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                            user?.location?.locationName ??
                                "At pick-up point in 3 - 5 business days",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Contact Details
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Your Contact details",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: getDefaultSize(),
                      )),
            ),
            MenuCard(
              title: "+447445965697",
              trailingIcon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 18,
              ),
              onTap: () {},
            ),
            SizedBox(height: 16),

            // Payment Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Payment", style: context.theme.textTheme.bodyMedium),
            ),
            MenuCard(
              icon: Icon(Icons.apple, color: Colors.white),
              title: "Apple Pay",
              trailingIcon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 18,
              ),
              onTap: () {},
            ),

            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                  "${products.length} ${products.length > 1 ? "Items" : "Item"}",
                  style: context.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: getDefaultSize(size: 17),
                  )),
            ),
            SizedBox(height: 16),

            Container(
                child: Column(
              children: [
                // SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     padding: const EdgeInsets.only(left: 16.0, bottom: 12),
                //     child: Row(
                //       children: [
                //         ...products.map((product) => Container(
                //               margin: const EdgeInsets.only(right: 8),
                //               child: ClipRRect(
                //                 borderRadius: BorderRadius.circular(
                //                     getDefaultBorderRadius()),
                //                 child: SizedBox(
                //                   height: 100,
                //                   width: 80,
                //                   child: CachedNetworkImage(
                //                     imageUrl: product.imagesUrl.first.url ?? "",
                //                     fit: BoxFit.cover,
                //                     placeholder: (context, url) =>
                //                         const ShimmerBox(
                //                       height: 70,
                //                       width: 70,
                //                     ),
                //                     errorWidget: (context, url, error) =>
                //                         Container(
                //                       color: PreluraColors.grey,
                //                     ),
                //                     fadeInDuration: Duration.zero,
                //                     fadeOutDuration: Duration.zero,
                //                   ),
                //                 ),
                //               ),
                //             ))
                //       ],
                //     )),
                _buildInfoRow("Order", "£${totalPrice}", context),
                _buildInfoRow("Postage", "£3.5", context),
                if (productInfo.seller.isMultibuyEnabled == true)
                  _buildInfoRow(
                      "Multi-buy discount (${calculatedDiscount}%)",
                      "-£${formatDynamicString(calculateMultiBuyDiscountPrice().toString())}",
                      context,
                      color: PreluraColors.primaryColor),
                SizedBox(height: 16),
                _buildInfoRow(
                  "Total ",
                  "£${formatDynamicString(calculateTotalPrice().toString())}",
                  context,
                  style: context.theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            )),
            SizedBox(height: 16),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Active Payment Method",
                  style: context.theme.textTheme.bodyMedium),
            ),
            PaymentMethod(),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 100.w,
        height: 155,
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock, color: PreluraColors.grey, size: 12),
                addHorizontalSpacing(12),
                Text("This is a secure encryption payment",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: PreluraColors.grey)),
              ],
            ),
            addVerticalSpacing(5),
            AppButton(
                height: 50,
                loading: ref.watch(orderProvider).isLoading ||
                    ref.watch(paymentProvider).isLoading,
                width: double.infinity,
                onTap: () async {
                  final userPaymentMethodId =
                      await ref.read(paymentMethodProvider).valueOrNull;
                  if (user?.location == null) {
                    context.alert("Add your address");
                    return;
                  }
                  if (userPaymentMethodId == null) {
                    context.alert("Add a payment method");
                    return;
                  }
                  log(userPaymentMethodId.toString());
                  await ref.read(orderProvider.notifier).createOrder(context,
                      productId: products.length == 1
                          ? int.parse(productInfo.id)
                          : null,
                      productIds: products.length == 1
                          ? null
                          : products
                              .map((product) => int.parse(
                                    product.id,
                                  ))
                              .toList(),
                      paymentMethodId:
                          userPaymentMethodId?.paymentMethodId != null
                              ? userPaymentMethodId!.paymentMethodId
                              : "");

                  ///
                  ///
                  ///
                  // ref.read(orderProvider).whenOrNull(
                  //       error: (e, _) => context
                  //           .alert('An error occurred while creating order'),
                  //       data: (order) async {
                  //         if (order == null) return;
                  //         await ref
                  //             .read(paymentProvider.notifier)
                  //             .createPaymentIntent(
                  //               int.parse(order.id),
                  //               Enum$PaymentMethodEnum.CARD,
                  //             );
                  //
                  //         ref.read(paymentProvider).whenOrNull(
                  //               error: (e, _) => context.alert(
                  //                   'An error occured while creating order'),
                  //               data: (_) => context.router.popForced(),
                  //               // context.alert('Product ordered complete'),
                  //             );
                  //       },
                  //     );

                  ///
                  ///
                  ///
                  // await ref
                  //     .read(bookingPaymentNotifierProvider.notifier)
                  //     .makePayment(paymentIntent['clientSecret']);
                },
                centerText: true,
                text: "Pay by card"),
            addVerticalSpacing(16),
            AppButton(
                height: 50,
                // loading: ref.watch(orderProvider).isLoading ||
                //     ref.watch(paymentProvider).isLoading,
                width: double.infinity,
                onTap: () async {},
                centerText: true,
                bgColor: Colors.black,
                textColor: Colors.white,
                borderColor: Colors.transparent,
                textWidget: Icon(
                  Icons.apple,
                  color: Colors.white,
                ),
                text: "Pay"),
          ],
        ),
      ), // Ensure proper contrast
    );
  }

  Widget _buildInfoRow(String label, String value, BuildContext context,
      {TextStyle? style, Color? color}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
            bottom: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 1.0,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: getDefaultSize(size: 16),
                fontWeight: FontWeight.w500,
                color: color ?? context.theme.textTheme.bodyMedium?.color),
          ),
          Text(
            value,
            style: style ??
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getDefaultSize(size: 16),
                    color: color ?? PreluraColors.greyColor),
          ),
        ],
      ),
    );
  }
}
