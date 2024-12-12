import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/model/user/user_model.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_picture.dart';

import '../../../res/colors.dart';

class ProfileCardWidget extends ConsumerWidget {
  const ProfileCardWidget({super.key, this.user});
  final UserModel? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(user?.location?.locationName);
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              if (user == null) return;
              VBottomSheetComponent.actionBottomSheet(
                context: context,
                actions: [
                  VBottomSheetItem(
                      onTap: () {
                        Navigator.pop(context);
                        VBottomSheetComponent.actionBottomSheet(
                          context: context,
                          actions: [
                            VBottomSheetItem(
                                onTap: () async {
                                  Navigator.pop(context);
                                  final photo = await ImagePicker().pickImage(source: ImageSource.gallery);

                                  if (photo == null) return;
                                  await ref.read(userNotfierProvider.notifier).updateProfilePicture(File(photo.path));
                                  ref.read(userNotfierProvider).whenOrNull(
                                        error: (e, _) => context.alert('An error occured while uploading profile image'),
                                        data: (_) => context.alert('Profile photo updated!'),
                                      );
                                },
                                title: 'Gallery'),
                            VBottomSheetItem(
                                onTap: () async {
                                  Navigator.pop(context);
                                  final photo = await ImagePicker().pickImage(source: ImageSource.camera);

                                  if (photo == null) return;
                                  await ref.read(userNotfierProvider.notifier).updateProfilePicture(File(photo.path));
                                  ref.read(userNotfierProvider).whenOrNull(
                                        error: (e, _) => context.alert('An error occured while uploading profile image'),
                                        data: (_) => context.alert('Profile photo updated!'),
                                      );
                                },
                                title: 'Camera'),
                          ],
                        );
                      },
                      title: 'Update Picture')
                ],
              );
            },
            child: ProfilePictureWidget(
              profilePicture: user != null ? user?.profilePictureUrl : ref.watch(userProvider).valueOrNull?.profilePictureUrl,
              username: user != null ? user?.username ?? '--' : ref.watch(userProvider).valueOrNull?.username ?? '--',
              updating: ref.watch(userNotfierProvider).isLoading,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user != null ? user?.username ?? '--' : ref.watch(userProvider).valueOrNull?.username ?? '--',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: Theme.of(context).textTheme.bodyMedium?.color),
              ),
              if (user != null || ref.watch(userProvider).valueOrNull != null)
                Text(
                  '${(user != null ? user?.listing ?? '--' : ref.watch(userProvider).valueOrNull?.listing).toString()} listings',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: PreluraColors.greyColor,
                      ),
                )
            ],
          ),
        ]));
  }
}
