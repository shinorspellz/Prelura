import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';

@RoutePage()
class MyFavouriteScreen extends StatelessWidget {
  const MyFavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
      DisplayCard(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Favourite items",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.68),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return items[index];
          }),
    );
  }
}
