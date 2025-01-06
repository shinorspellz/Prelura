import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/utils/currency_format.dart';
import 'package:prelura_app/controller/user/user_earnings_controller.dart';
import 'package:prelura_app/views/pages/animated_counter.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import '../../widgets/app_bar.dart';

@RoutePage()
class ShopValueScreen extends ConsumerStatefulWidget {
  const ShopValueScreen({super.key});

  @override
  ConsumerState<ShopValueScreen> createState() => _ShopValueScreenState();
}

class _ShopValueScreenState extends ConsumerState<ShopValueScreen> {
  int currentShopValue = 0;
  int balance = 0;
  int earningThisMonth = 0;
  int totalEarnings = 0;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 300)).then(
      (_) {
        if (mounted) {
          setState(() {
            currentShopValue = 10000;
            balance = 1030;
            earningThisMonth = 2290;
            totalEarnings = 3147043;
          });
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userEarinings = ref.watch(userEarningsProvider).valueOrNull;

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Shop Value",
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Current Shop value",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          )),
                  16.horizontalSpacing,
                  AnimatedCount(
                    count: userEarinings?.networth.toInt() ?? 0, //currentShopValue,
                    formatToCurrency: true,
                    duration: Duration(milliseconds: 900),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: PreluraColors.grey),
                  ),
                  // Text(
                  //   "10000".formatToPounds,
                  //   style: Theme.of(context).textTheme.titleLarge?.copyWith(color: PreluraColors.grey),
                  // ),
                ],
              )),
          Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        )),
                Text("Pending : ${(userEarinings?.pendingPayments.value ?? 0).toString().formatToPounds}",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: PreluraColors.primaryColor)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(64),
            child: AnimatedCount(
                count: userEarinings?.completedPayments.value ?? 0,
                formatToCurrency: true,
                duration: Duration(milliseconds: 600),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    )),
            // Text("1030.66",
            //     style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            //           fontWeight: FontWeight.w500,
            //         ))
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppButton(
              onTap: () {},
              text: "Withdraw",
              width: 100.w,
              height: 50,
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          Padding(
              padding: EdgeInsets.all(16),
              child: Text("${userEarinings?.totalEarnings.quantity ?? 0} Transaction completed",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: PreluraColors.primaryColor))),
          Divider(
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text('Earnings this month',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w500,
                              )),
                      SizedBox(height: 48),
                      Center(
                        child: Align(
                          child: AnimatedCount(
                            count: userEarinings?.earningsInMonth.value.toInt() ?? 0,
                            formatToCurrency: true,
                            duration: Duration(milliseconds: 600),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // Text(
                          //   '£2,290',
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 24,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),
                      SizedBox(height: 48),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('More', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: PreluraColors.primaryColor)),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(width: 8),
              //@Mr Hassan, help me do the vertical dicider as it is not displaying. Thanks
              SizedBox(
                height: 170,
                child: VerticalDivider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1.5, // Thickness of the divider line
                ),
              ),
              // SizedBox(width: 8),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Total Earnings',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w500,
                                )),
                      ),
                      SizedBox(height: 48),
                      AnimatedCount(
                        count: userEarinings?.totalEarnings.value.toInt() ?? 0,
                        formatToCurrency: true,
                        duration: Duration(milliseconds: 600),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Text(
                      //   '£3,147,043',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 24,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      SizedBox(height: 48),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('More', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: PreluraColors.primaryColor)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.5,
          ),
          Spacer(),
          Center(
            child: Text('Help',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: PreluraColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: PreluraColors.primaryColor,
                    )),
          ),
          24.verticalSpacing,
        ],
      ),
    ); // Hello world
  }
}
