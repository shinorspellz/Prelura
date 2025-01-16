import 'package:flutter/material.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/gap.dart';

class TextOption extends StatelessWidget {
  const TextOption({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: PreluraColors.blueTextColor,
              ),
          maxLines: 2,
        ),
      ),
    );
  }
}

class BulletItem extends StatelessWidget {
  const BulletItem({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
              color: Theme.of(context).iconTheme.color,
              shape: BoxShape.circle,
            )),
        addHorizontalSpacing(10),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  // color: Theme.of(context).primaryColor
                ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
