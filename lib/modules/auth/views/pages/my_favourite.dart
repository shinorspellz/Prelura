import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';

import '../widgets/gesture_navigator.dart';

@RoutePage()
class MyFavouriteScreen extends StatelessWidget {
  const MyFavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
      const DisplayCard(),
    ];

    return GestureNavigationWidget(currentScreenBuilder: (context) {
      return Scaffold(
        appBar: PreluraAppBar(
          appbarTitle: "Favourite items",
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: GridView.builder(
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.58),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return items[index];
            }),
      );
    });
  }
}
