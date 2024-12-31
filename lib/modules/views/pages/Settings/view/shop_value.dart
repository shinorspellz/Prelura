import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/app_bar.dart';

@RoutePage()
class ShopValueScreen extends ConsumerWidget {
  const ShopValueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "Shop Value",
        centerTitle: true,
      ),
      body: Container(
          child: Column(
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
                  Text(
                    "£10,000",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: PreluraColors.grey),
                  ),
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
                Text("Pending : £1000",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: PreluraColors.primaryColor)),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(64),
              child: Text("£1030.66",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ))),
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
              child: Text("625 Transaction completed",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: PreluraColors.primaryColor))),
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
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  )),
                      SizedBox(height: 48),
                      Center(
                        child: Align(
                          child: Text(
                            '£2,290',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 48),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('More',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: PreluraColors.primaryColor)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),
              Column(
                children: [
                  VerticalDivider(
                    color: Colors.white, // Divider color
                    width: 30,
                    thickness: 20, // Thickness of the divider line
                    indent: 10, // Space before the divider
                    endIndent: 10, // Space after the divider
                  ),
                ],
              ),
              SizedBox(width: 8),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text('Total Earnings',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  )),
                      SizedBox(height: 48),
                      Text(
                        '£3,147,043',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 48),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text('More',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: PreluraColors.primaryColor)),
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
      )),
    ); // Hello world
  }
}
