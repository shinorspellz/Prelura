import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

@RoutePage()
class VerifyVideo extends StatefulWidget {
  final XFile image;
  const VerifyVideo({super.key, required this.image});

  @override
  State<VerifyVideo> createState() => _VerifyVideoState();
}

class _VerifyVideoState extends State<VerifyVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Verifying your identity",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(40),
                Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        addVerticalSpacing(50),
                        SvgPicture.asset(
                          "assets/icons/record.svg",
                          width: 55,
                          height: 55,
                          colorFilter: ColorFilter.mode(
                            PreluraColors.primaryColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        addVerticalSpacing(25),
                        Text(
                          "Record a short video of yourself",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                // color: PreluraColors.primaryColor,
                              ),
                        ),
                        addVerticalSpacing(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Make sure we can see you clearly, then say the words that appear to camera so we can match you to your photo ID.",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  // color: PreluraColors.primaryColor,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                ),
                addVerticalSpacing(60),
                AppButton(
                  text: "I'm ready",
                  width: double.infinity,
                  onTap: () {
                    context.router.push(
                      RecordVideo(
                        image: widget.image,
                      ),
                    );
                  },
                  isDisabled: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
