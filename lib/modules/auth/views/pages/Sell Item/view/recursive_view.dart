import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/provider/sub_category_provider.dart';

import '../provider/shared_notifier.dart';

class RecursiveView extends ConsumerWidget {
  const RecursiveView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(sharedProductNotifierProvider).last;
    final notifier = ref.read(sharedProductNotifierProvider.notifier);
    final selectedCategory = ref.read(selectedCategoryNotifierProvider);

    return WillPopScope(
      onWillPop: () async {
        notifier.goBack();
        if (notifier.current.selectedValue == selectedCategory.selectedValue) {
          context.router.back(); // Exit to the initial route
        } else {
          log('this is true');
          context.router.replace(SubCategoryProductRoute());
        }
        return false; // Prevent default navigation
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            sharedData.selectedValue == 'Initial'
                ? 'Select a Category'
                : '${sharedData.selectedValue} Products',
          ),
        ),
        body: ListView.builder(
          itemCount: sharedData.relatedStrings.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(sharedData.relatedStrings[index]),
              onTap: () {
                notifier.updateData(sharedData.relatedStrings[index]);
                context.router.push(SubCategoryProductRoute());
              },
            );
          },
        ),
      ),
    );
  }
}
