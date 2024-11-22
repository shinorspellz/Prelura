import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/provider/sub_category_provider.dart';

import '../../../../../../res/colors.dart';
import '../../../widgets/menu_card.dart';

@RoutePage()
class SubCategoryScreen extends ConsumerWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Text("${sharedData.selectedValue}",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                          )))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: sharedData.relatedStrings.length,
                itemBuilder: (context, index) {
                  return MenuCard(
                      title: sharedData.relatedStrings[index],
                      icon: Icon(
                        Icons.settings,
                        color: PreluraColors.activeColor,
                      ),
                      onTap: () {});
                }),
          ],
        ),
      ),
    );
  }
}
