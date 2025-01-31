import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/gap.dart';

List<CameraDescription> cameras = []; //1 service

@RoutePage()
class UploadIdentityDocument extends StatefulWidget {
  final String pageTitle;
  const UploadIdentityDocument({
    super.key,
    required this.pageTitle,
  });

  @override
  State<UploadIdentityDocument> createState() => _UploadIdentityDocumentState();
}

class _UploadIdentityDocumentState extends State<UploadIdentityDocument> {
  CameraController? controller; //2 service

  XFile? pictureFile;

  getAvailableCamera() async {
    //3 service
    cameras = await availableCameras();
    setState(() {});
    controller = CameraController(
      cameras[0],
      ResolutionPreset.max,
    );
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      getAvailableCamera(); //4 service
    }
  }

  @override
  void dispose() {
    controller!.dispose(); //service
    super.dispose();
  }

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
      body: controller?.value != null
          ? !controller!.value.isInitialized //5 controller state
              ? Container()
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          addVerticalSpacing(30),
                          Text(
                            "Make sure the front of your driving licence is in the frame.",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
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
                                height: 400,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child:
                                      CameraPreview(controller!), //6 major UI
                                ),
                              ),
                            ),
                          ),
                          addVerticalSpacing(40),
                          GestureDetector(
                            onTap: () async {
                              pictureFile =
                                  await controller!.takePicture(); //7 action
                              setState(() {});
                              // ignore: use_build_context_synchronously
                              // navigateTo
                              context.router.push(
                                DisplayCapturedDocument(
                                  image: pictureFile!,
                                  pageTitle: widget.pageTitle,
                                ),
                              );
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  width: 2.5,
                                  // color: VmodelColors.primaryColor,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // color: VmodelColors.primaryColor,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                )
          : Container(),
    );
  }
}
