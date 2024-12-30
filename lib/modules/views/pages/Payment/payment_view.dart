import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/order_provider.dart';
import 'package:prelura_app/modules/controller/product/payment_provider.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_in.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/app_checkbox.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/payment_controller.dart';
import '../../widgets/profile_picture.dart';

// State provider from earlier
final selectedDeliveryOptionProvider = StateProvider<int>((ref) => 1);

@RoutePage()
class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Read the current delivery option
    final selectedDeliveryOption = ref.watch(selectedDeliveryOptionProvider);
    final user = ref.watch(userProvider).value;

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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Address", style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w300)),
            ),
            MenuCard(
              title: user?.location?.locationName ?? "",
              trailingIcon: Icon(
                Icons.edit,
                size: 16,
              ),
              onTap: () {
                // Handle edit address logic
              },
            ),
            SizedBox(height: 16),

            // Delivery Options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Delivery Option", style: TextStyle(color: Colors.white)),
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
                  color: Theme.of(context).dividerColor, // Use the theme's divider color
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

                        if (user?.username == product.seller.username) {
                          context.router.push(UserProfileDetailsRoute());
                        } else {
                          context.router.push(ProfileDetailsRoute(username: product.seller.username));
                        }
                      },
                      child: Row(
                        children: [
                          ProfilePictureWidget(
                            profilePicture: product.seller.profilePictureUrl,
                            username: product.seller.username,
                            width: 40,
                            height: 40,
                          ),
                          addHorizontalSpacing(8),
                          Text(
                            product.seller.username,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, fontSize: 17, color: Theme.of(context).textTheme.bodyMedium?.color),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("£2.29", style: Theme.of(context).textTheme.bodyMedium),
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
                        Text(user?.location?.locationName ?? "One Stop", style: Theme.of(context).textTheme.bodyMedium),
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
                        Text(user?.location?.locationName ?? "30 New Bank Road, BB2 6JW, Blackburn", style: Theme.of(context).textTheme.bodyMedium),
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
                        Text(user?.location?.locationName ?? "At pick-up point in 3 - 5 business days", style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Contact Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Your Contact details", style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w300)),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Text("Payment", style: TextStyle(color: Colors.white)),
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
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          // Handle Apple Pay logic
        },
        child: Container(
          width: 100.w,
          height: 130,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock, color: PreluraColors.grey, size: 12),
                  addHorizontalSpacing(12),
                  Text("This is a secure encryption payment", style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w300, color: PreluraColors.grey)),
                ],
              ),
              addVerticalSpacing(16),
              AppButton(
                  height: 50,
                  loading: ref.watch(orderProvider).isLoading || ref.watch(paymentProvider).isLoading,
                  width: double.infinity,
                  onTap: () async {
                    await ref.read(orderProvider.notifier).createOrder(int.parse(product.id));
                    ref.read(orderProvider).whenOrNull(
                          error: (e, _) => context.alert('An error occured while creating order'),
                          data: (order) async {
                            if (order == null) return;
                            await ref.read(paymentProvider.notifier).createPaymentIntent(
                                  int.parse(order.id),
                                  Enum$PaymentMethodEnum.CARD,
                                );

                            ref.read(paymentProvider).whenOrNull(
                                  error: (e, _) => context.alert('An error occured while creating order'),
                                  data: (_) => context.alert('Product ordered complete'),
                                );
                          },
                        );

                    // await ref
                    //     .read(bookingPaymentNotifierProvider.notifier)
                    //     .makePayment(paymentIntent['clientSecret']);
                  },
                  centerText: true,
                  bgColor: Colors.black,
                  borderColor: Colors.transparent,
                  textWidget: Icon(Icons.apple, color: Colors.white),
                  text: "Pay"),
            ],
          ),
        ),
      ), // Ensure proper contrast
    );
  }
}
