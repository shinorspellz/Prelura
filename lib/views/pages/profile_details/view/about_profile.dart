import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

import '../../../../core/router/router.gr.dart';

class AboutProfile extends ConsumerWidget {
  const AboutProfile({super.key, this.username});
  final String? username;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref
        .watch((username != null ? otherUserProfile(username!) : userProvider))
        .valueOrNull;
    print("user is ${user?.location?.locationName}");

    bool isCurrentUser = username == null;
    HelperFunction.context = context;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image Section
            Stack(
              children: [
                if (user?.profilePictureUrl == null)
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Transform.scale(
                      scale: 2,
                      child: Text(
                        user?.username.split('').first.toUpperCase() ?? '-',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  )
                else
                  CachedNetworkImage(
                    imageUrl: user!.profilePictureUrl!,
                    height: MediaQuery.of(context).size.width,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                if (isCurrentUser)
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: PreluraColors.activeColor,
                      child: ref.watch(userNotfierProvider).isLoading
                          ? const SizedBox(
                              height: 25,
                              width: 25,
                              child: LoadingWidget(),
                            )
                          : IconButton(
                              onPressed: () {
                                VBottomSheetComponent.actionBottomSheet(
                                  context: context,
                                  actions: [
                                    VBottomSheetItem(
                                        onTap: (context) {
                                          Navigator.pop(context);
                                          VBottomSheetComponent
                                              .actionBottomSheet(
                                            context: context,
                                            actions: [
                                              VBottomSheetItem(
                                                  onTap: (context) async {
                                                    Navigator.pop(context);
                                                    final photo =
                                                        await ImagePicker()
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
                                                                        .gallery);

                                                    if (photo == null) return;
                                                    await ref
                                                        .read(
                                                            userNotfierProvider
                                                                .notifier)
                                                        .updateProfilePicture(
                                                            File(photo.path));
                                                    ref
                                                        .read(
                                                            userNotfierProvider)
                                                        .whenOrNull(
                                                          error: (e, _) =>
                                                              context.alert(
                                                                  'An error occured while uploading profile image'),
                                                          data: (_) =>
                                                              HelperFunction
                                                                  .showToast(
                                                                      message:
                                                                          'Profile photo updated!'),
                                                        );
                                                  },
                                                  title: 'Gallery'),
                                              VBottomSheetItem(
                                                  onTap: (context) async {
                                                    Navigator.pop(context);
                                                    final photo =
                                                        await ImagePicker()
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
                                                                        .camera);

                                                    if (photo == null) return;
                                                    await ref
                                                        .read(
                                                            userNotfierProvider
                                                                .notifier)
                                                        .updateProfilePicture(
                                                            File(photo.path));
                                                    ref
                                                        .read(
                                                            userNotfierProvider)
                                                        .whenOrNull(
                                                          error: (e, _) =>
                                                              context.alert(
                                                                  'An error occured while uploading profile image'),
                                                          data: (_) =>
                                                              HelperFunction
                                                                  .showToast(
                                                                      message:
                                                                          'Profile photo updated!'),
                                                        );
                                                  },
                                                  title: 'Camera'),
                                            ],
                                          );
                                        },
                                        title: 'Update Picture'),
                                    VBottomSheetItem(
                                        onTap: (context) {
                                          Navigator.pop(context);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              final controller =
                                                  TextEditingController(
                                                      text: user?.bio);
                                              return AlertDialog(
                                                title: const Text('Update Bio'),
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    PreluraAuthTextField(
                                                      label: 'Bio',
                                                      labelStyle: Theme.of(
                                                              context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              fontSize:
                                                                  getDefaultSize(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                      hintStyle: Theme.of(
                                                              context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              fontSize:
                                                                  getDefaultSize(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                      controller: controller,
                                                      maxLines: null,
                                                    ),
                                                    10.verticalSpacing,
                                                    Consumer(builder:
                                                        (context, ref, _) {
                                                      return PreluraButtonWithLoader(
                                                        showLoadingIndicator: ref
                                                            .watch(
                                                                userNotfierProvider)
                                                            .isLoading,
                                                        onPressed: () async {
                                                          await ref
                                                              .read(
                                                                  userNotfierProvider
                                                                      .notifier)
                                                              .updateProfile(
                                                                  bio: controller
                                                                      .text);
                                                          ref
                                                              .read(
                                                                  userNotfierProvider)
                                                              .whenOrNull(
                                                                error: (e, _) =>
                                                                    context.alert(
                                                                        'An error occured while updating'),
                                                                data: (_) {
                                                                  Navigator.pop(
                                                                      context);
                                                                  HelperFunction
                                                                          .context =
                                                                      context;
                                                                  HelperFunction
                                                                      .showToast(
                                                                          message:
                                                                              'Bio updated!');
                                                                },
                                                              );
                                                        },
                                                        buttonTitle: 'Update',
                                                        // width: MediaQuery.sizeOf(context).width,
                                                      );
                                                    })
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        title: 'Update Bio')
                                  ],
                                );
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  )
              ],
            ),
            buildDivider(context),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "stanley1969",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyMedium
                  //       ?.copyWith(fontSize: 26),
                  // ),

                  if (user?.bio != null) ...[
                    Text(
                      user?.bio ?? '',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: getDefaultSize(),
                          ),
                    ),
                    const SizedBox(height: 16),
                  ],

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 14,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        user?.location?.locationName ??
                            "Exeter, United Kingdom",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.wifi,
                        size: 14,
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          context.router
                              .push(FollowersRoute(username: user!.username));
                        },
                        child: Text.rich(TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.router.push(
                                    FollowersRoute(username: user!.username));
                              },
                            text: user?.noOfFollowers.toString() ?? '--',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.color,
                                ),
                            children: [
                              TextSpan(
                                text: (user != null &&
                                        (user.noOfFollowers!.toInt() > 1 ||
                                            user.noOfFollowers!.toInt() == 0))
                                    ? " followers"
                                    : " follower,",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: getDefaultSize(),
                                      color: PreluraColors.activeColor,
                                    ),
                              ),
                            ])),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          context.router
                              .push(FollowingRoute(username: user!.username));
                        },
                        child: Text.rich(TextSpan(
                            text: user?.noOfFollowing.toString() ?? '--',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getDefaultSize(),
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.color,
                                ),
                            children: [
                              TextSpan(
                                text: " following",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: getDefaultSize(),
                                      color: PreluraColors.activeColor,
                                    ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        size: 14,
                      ),
                      const SizedBox(width: 8),
                      Text("last seen  2 hours ago",
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
