import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/utils/hex_color.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'onboarding.dart';

class SecondIndexBox extends StatelessWidget {
  const SecondIndexBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(children: [
        Text("🌟",
            style: TextStyle(
              fontSize: 30,
            )),
        addVerticalSpacing(5),
        Text(
          "Shop Preloved, Sell Effortlessly",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(20),
        Text(
          "Discover preloved fashion that fits your style and budget. Sell items you don’t want easily. ",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(50),
      ]),
    );
  }
}

class ThirdIndexBox extends StatelessWidget {
  const ThirdIndexBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(children: [
        SvgPicture.asset(
          "assets/icons/recycling.svg",
          height: 40,
        ),
        addVerticalSpacing(5),
        Text(
          "Style Meets Sustainability",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(20),
        Text(
          "Every item you buy or sell helps reduce waste and supports a more sustainable fashion future. Together, we’re making a difference. 🌿",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(50),
      ]),
    );
  }
}

class FourthIndexBox extends StatelessWidget {
  const FourthIndexBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(children: [
        Text(
          "Dont wear/like/need/want it?",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(40),
        Text(
          "Sell it!",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Hex("#FBFBFB"),
                height: 1.7,
                letterSpacing: -1,
              ),
        ),
        addVerticalSpacing(0),
      ]),
    );
  }
}

class FirstIndexInfo extends StatelessWidget {
  const FirstIndexInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        "Discover a world of preloved fashion,\nbuy and sell quality clothing with ease while giving your wardrobe a sustainable touch.",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Hex("#FBFBFB"),
            height: 1.7,
            letterSpacing: -1),
      ),
    );
  }
}

class OnboardingFirstPart extends ConsumerWidget {
  const OnboardingFirstPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size deviceSize = MediaQuery.of(context).size;
    bool isDarkMode = context.isDarkMode;
    int activeIndex = ref.watch(activeOnboardingIndex);

    return AnimatedContainer(
      height: deviceSize.height * (activeIndex > 1 ? 0.34 : 0.38),
      width: double.infinity,
      duration: const Duration(milliseconds: 360),
      curve: Curves.linear,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          "Welcome to",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: activeIndex > 1
                    ? Hex("#979797")
                    : isDarkMode
                        ? Colors.white
                        : Colors.black,
              ),
        ),
        SvgPicture.asset(
          "assets/images/Prelura.svg",
          height: 85,
        )
      ]),
    );
  }
}
