import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/settings/invite_friend/modules/share_profile_link_widget.dart';
import 'package:prelura_app/views/pages/settings/invite_friend/modules/show_animated_dialog.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';

@RoutePage()
class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: dismissKeyboard,
      child: Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => context.router.popForced(),
          ),
          appbarTitle: "Invite a friend",
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            // controller: controller.scrollController,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    goToListContacts(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFA656B3),
                          Color(0xFF8C1F9D),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Invite a contact",
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                        ),
                        10.toHeight,
                        Center(
                          child: SvgPicture.asset(PreluraIcons.phoneBookIcon),
                        ),
                        10.toHeight,
                      ],
                    ),
                  ),
                ),
                40.toHeight,
                PreluraButtonWithLoader(
                  buttonTitle: "Share profile link",
                  onPressed: () {
                    shareProfileLink(context);
                  },
                ),
                10.toHeight,
                PreluraButtonWithLoader(
                  buttonTitle: "Invite via facebook",
                  buttonColor: PreluraColors.faceBookColor,
                  onPressed: () {
                    shareProfileLink(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//!================ Variables ================\\
var profileLink = "Prelura.com/sdjvhsdElWhsa064";

//!================ Functions =================/
goToListContacts(BuildContext context) {
  context.router.push(const ListOfContacts());
}

Future<void> shareProfileLink(BuildContext context) async {
  showAnimatedDialog(
    context: context,
    child: ShareProfileLinkWidget(),
  );
}

Future<void> inviteViaFaceBook() async {}
