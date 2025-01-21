import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/utils/theme.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    bool isDarkMode = context.isDarkMode;
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
            Container(
              height: deviceSize.height * 0.38,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                    ),
                    SvgPicture.asset(
                      "assets/images/Prelura.svg",
                      height: 85,
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
