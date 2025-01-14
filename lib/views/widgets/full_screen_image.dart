import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/ui_constants.dart';

import '../../../res/colors.dart';

class FullScreenImage extends StatefulWidget {
  final List<XFile> imagePath; // Local image files
  final List<ProductBanners> imageUrl; // Network image URLs
  final int initialIndex; // Starting index for the viewer
  final bool isLocal; // Whether the images are local or from the network

  const FullScreenImage({
    super.key,
    this.imageUrl = const [],
    this.imagePath = const [],
    required this.initialIndex,
    this.isLocal = false,
  });

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  late int currentIndex = widget.initialIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fullscreen background color
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 20),
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: PreluraColors.white,
                  ),
                  onPressed: () {
                    context.router.popForced();
                  }),
            ),
          ),
          // Spacer(),
          Expanded(
            flex: 5,
            child: PageView.builder(
              onPageChanged: (index) => setState(() => currentIndex = index),
              controller: PageController(initialPage: widget.initialIndex),
              itemCount: widget.isLocal ? widget.imagePath.length : widget.imageUrl.length,
              itemBuilder: (context, index) {
                return Center(
                  child: widget.isLocal
                      ? InteractiveViewer(
                          child: Image.file(
                            File(widget.imagePath[index].path), // Local image file
                            fit: BoxFit.contain,
                          ),
                        )
                      : InteractiveViewer(
                          child: CachedNetworkImage(
                            imageUrl: widget.imageUrl[index].url, // Network image URL
                            fit: BoxFit.contain,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(), // Loading indicator
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error, // Error icon for failed loading
                              color: Colors.red,
                            ),
                          ),
                        ),
                );
              },
            ),
          ),
          SafeArea(
              child: Text(
            '${currentIndex + 1}/${widget.imageUrl.length}',
            style: context.textTheme.titleLarge,
          )),
          20.verticalSpacing,
        ],
      ),
    );
  }
}
