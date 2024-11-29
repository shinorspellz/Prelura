import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/provider/sub_category_provider.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../../../../../../res/colors.dart';
import '../../../widgets/gesture_navigator.dart';
import '../../../widgets/menu_card.dart';

@RoutePage()
class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);
    return GestureNavigationWidget(currentScreenBuilder: (context) {
      return Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Category",
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              MenuCard(
                  title: "Women",
                  icon: const Icon(
                    Icons.settings,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Women');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "Men",
                  icon: const Icon(
                    Icons.lock,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Men');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "kids",
                  icon: const Icon(
                    Icons.info_outlined,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Kids');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "Home",
                  icon: const Icon(
                    Icons.info_outlined,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Home');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "Electronics",
                  icon: const Icon(
                    Icons.power_input,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Electronics');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "Entertainment",
                  icon: const Icon(
                    Icons.face,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Entertainment');
                    context.router.push(const SubCategoryRoute());
                  }),
              MenuCard(
                  title: "Pet care",
                  icon: const Icon(
                    CupertinoIcons.paw,
                    color: PreluraColors.activeColor,
                  ),
                  onTap: () {
                    ref
                        .read(selectedCategoryNotifierProvider.notifier)
                        .updateData('Pet Care');
                    context.router.push(const SubCategoryRoute());
                  }),
            ],
          ),
        ),
      );
    });
  }
}
