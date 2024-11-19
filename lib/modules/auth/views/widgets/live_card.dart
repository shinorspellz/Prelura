import 'package:flutter/material.dart';
import 'package:prelura_app/res/images.dart';

class LiveCard extends StatelessWidget {
  const LiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity, // Full width of the parent
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      height: 150,
      child: Stack(children: [
        Container(
          width: double.infinity, // Full width of the parent
          child: Image.asset(
            PreluraIcons.Image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 20,
          left: 30,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sell An Item",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Text(
                  "Earn Cash from the money you dont need",
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "#5.00",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
