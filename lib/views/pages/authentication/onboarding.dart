import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/hex_color.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import 'onboarding_widgets.dart';

final activeOnboardingIndex = StateProvider<int>((_) => 1);

List<Widget> _widgets = const [
  FirstIndexInfo(),
  SecondIndexBox(),
  ThirdIndexBox(),
  FourthIndexBox(),
];

@RoutePage()
class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size deviceSize = MediaQuery.of(context).size;
    bool isDarkMode = !context.isDarkMode;
    int activeIndex = ref.watch(activeOnboardingIndex);
    Color itemColor = isDarkMode ? Colors.white : Colors.black;
    return Container(
      height: deviceSize.height,
      width: deviceSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            isDarkMode
                ? 'assets/images/blackBg.png'
                : 'assets/images/whiteBg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: !isDarkMode ? Colors.white : Colors.black,
              foregroundColor: itemColor,
            )),
        body: SafeArea(
          bottom: false,
          child: Column(children: [
            OnboardingFirstPart(),
            Expanded(
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 40,
                    left: 40,
                    top: 50,
                    bottom: 40,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1, 0), // Start off-screen
                                end: Offset.zero, // Slide into view
                              ).animate(animation),
                              child: FadeTransition(
                                  opacity: animation, child: child),
                            );
                            // return FadeTransition(
                            //     opacity: animation, child: child);
                          },
                          child: _widgets[activeIndex - 1],
                        ),

                        ///
                        ///
                        ///
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              if (activeIndex == 4) {
                                context.router.push(
                                  LoginRoute(),
                                );
                              }
                              ref.read(activeOnboardingIndex.notifier).state =
                                  activeIndex == 4 ? 1 : activeIndex + 1;
                            },
                            child: Container(
                              height: 30,
                              width: 62,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Hex("#F1F1F1"),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      activeIndex == 4 ? "Enter" : "Next",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                            fontSize: 15,
                                            letterSpacing: -1,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                    ),
                                    addHorizontalSpacing(3),
                                    SvgPicture.asset(
                                      "assets/svgs/next.svg",
                                      height: 11.19,
                                    )
                                  ]),
                            ),
                          ),
                        )
                      ]),
                ),
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "$activeIndex/4",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                    ),
                  ),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
