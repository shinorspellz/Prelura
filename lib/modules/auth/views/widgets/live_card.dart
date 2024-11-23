import 'package:flutter/material.dart';
import 'package:prelura_app/res/images.dart';

class LiveCard extends StatelessWidget {
  const LiveCard({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: height != null ? const EdgeInsets.only(right: 10) : const EdgeInsets.all(20),
      width: double.infinity, // Full width of the parent
      height: height ?? 150,
      child: Stack(children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              PreluraIcons.Image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 30,
          child: SizedBox(
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
                  height: height != null ? 70 : 20,
                ),
                InkWell(
                  onTap: () {
                    // Define your onTap logic here
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "List Now",
                      style: TextStyle(
                        color: Theme.of(context)
                            .buttonTheme
                            .colorScheme
                            ?.onPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
