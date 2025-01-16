import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/gap.dart';

@RoutePage()
class DisplayCapturedDocument extends StatefulWidget {
  final String pageTitle;
  const DisplayCapturedDocument(
      {super.key, required this.image, required this.pageTitle});
  final XFile image;

  @override
  State<DisplayCapturedDocument> createState() =>
      _DisplayCapturedDocumentState();
}

class _DisplayCapturedDocumentState extends State<DisplayCapturedDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: widget.pageTitle,
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
                "Is the front of your driving licence in the frame and easy to read? If so, you’re good to go!",
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
                  child: Container(
                    height: 237,
                    width: 339,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(File(widget.image.path),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              addVerticalSpacing(60),
              AppButton(
                width: double.infinity,
                onTap: () {
                  context.router.push(VerifyVideo(
                    image: widget.image,
                  ));
                },
                text: "Use this picture",
                isDisabled: false,
              ),
              addVerticalSpacing(20),
              GestureDetector(
                onTap: () {
                  context.router.popForced();
                  // goBack(context);
                },
                child: Text(
                  "Retake picture",
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
