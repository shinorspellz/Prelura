import 'dart:async';

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

class FourthIndexBox extends StatefulWidget {
  const FourthIndexBox({super.key});

  @override
  State<FourthIndexBox> createState() => _FourthIndexBoxState();
}

class _FourthIndexBoxState extends State<FourthIndexBox> {
  List<String> words = ["wear", "like", "need", "want"];
  int wordIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    wordIndex = 0;
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.7,
                      letterSpacing: -1,
                    ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1), // Start from below
                      end: Offset.zero, // End at original position
                    ).animate(animation),
                    child: child,
                  );
                },
                child: Text(
                  " ${words[wordIndex]}",
                  key: ValueKey<int>(wordIndex),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 1.7,
                        letterSpacing: -1,
                      ),
                ),
              ),
              Text(
                " it?",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.7,
                      letterSpacing: -1,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Sell it!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.7,
                  letterSpacing: -1,
                ),
          ),
        ],
      ),
    );
  }

  _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        wordIndex = (wordIndex + 1) % words.length;
      });
    });
  }
}

// class FourthIndexBox extends StatefulWidget {
//   const FourthIndexBox({
//     super.key,
//   });
//
//   @override
//   State<FourthIndexBox> createState() => _FourthIndexBoxState();
// }
//
// class _FourthIndexBoxState extends State<FourthIndexBox> {
//   List<String> words = ["wear", "like", "need", "want"];
//   int wordIndex = 0;
//   Timer? _timer;
//
//   @override
//   void initState() {
//     wordIndex = 0;
//     _startTimer();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 50),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Text(
//             "Don`t",
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w600,
//                   color: Hex("#FBFBFB"),
//                   height: 1.7,
//                   letterSpacing: -1,
//                 ),
//           ),
//           Text(
//             " ${words[wordIndex]}",
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w800,
//                   color: Hex("#FBFBFB"),
//                   height: 1.7,
//                   letterSpacing: -1,
//                 ),
//           ),
//           Text(
//             " it?",
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w600,
//                   color: Hex("#FBFBFB"),
//                   height: 1.7,
//                   letterSpacing: -1,
//                 ),
//           ),
//         ]),
//         addVerticalSpacing(40),
//         Text(
//           "Sell it!",
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 color: Hex("#FBFBFB"),
//                 height: 1.7,
//                 letterSpacing: -1,
//               ),
//         ),
//         addVerticalSpacing(0),
//       ]),
//     );
//   }
//
//   _startTimer() {
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         wordIndex = (wordIndex + 1) % words.length;
//       });
//     });
//   }
// }

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
