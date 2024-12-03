import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';
import '../model/order_model.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // User Avatar
            Stack(clipBehavior: Clip.none, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  order.imageUrl,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              if (order.status.toLowerCase().contains("completed"))
                Positioned(
                    bottom: -6,
                    right: -2,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          size: 12,
                          color: PreluraColors.white,
                        ),
                      ),
                    ))
            ]),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "£ ${order.price}",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    order.status,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),

            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Theme.of(context).iconTheme.color,
            ),
          ],
        ),
      ),
    );
  }
}
