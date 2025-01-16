import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class SubmitVideo extends StatefulWidget {
  final XFile image;
  const SubmitVideo({super.key, required this.image, required this.videoFile});

  final XFile videoFile;
  @override
  State<SubmitVideo> createState() => _SubmitVideoState();
}

class _SubmitVideoState extends State<SubmitVideo> {
  late VideoPlayerController _videoController;

  playVideo(XFile video) {
    _videoController = VideoPlayerController.file(File(video.path))
      ..initialize().then((_) {
        _videoController.setLooping(false);
        _videoController.pause();
        setState(() {});
      });
  }

  int taps = 0;
  @override
  void initState() {
    super.initState();
    playVideo(widget.videoFile);
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Selfie Video",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpacing(30),
              Text(
                "Great! Check your video is easy to see and hear before you press send.",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      // color: VmodelColors.primaryColor,
                    ),
                textAlign: TextAlign.center,
              ),
              addVerticalSpacing(60),
              Center(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _videoController.value.isPlaying
                            ? _videoController.pause()
                            : _videoController.play();
                      });
                    },
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: VideoPlayer(_videoController),
                    ),
                  ),
                ),
              ),
              addVerticalSpacing(60),
              AppButton(
                width: double.infinity,
                onTap: () {
                  // navigateAndReplaceRoute(
                  //     context,
                  //     VerifyNationalID(
                  //       image: widget.image,
                  //     ));
                },
                text: "Submit video",
                isDisabled: false,
              ),
              addVerticalSpacing(20),
              GestureDetector(
                onTap: () {
                  // goBack(context);
                },
                child: Text(
                  "Retake video",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        // color: VmodelColors.primaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
