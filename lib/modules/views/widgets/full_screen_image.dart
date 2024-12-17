import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';

import '../../model/product/product.dart';

class FullScreenImage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fullscreen background color
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop(); // Close the viewer on tap
        },
        child: PageView.builder(
          controller: PageController(initialPage: initialIndex),
          itemCount: isLocal ? imagePath.length : imageUrl.length,
          itemBuilder: (context, index) {
            return Center(
              child: isLocal
                  ? Image.file(
                      File(imagePath[index].path), // Local image file
                      fit: BoxFit.contain,
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl[index].url, // Network image URL
                      fit: BoxFit.contain,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(), // Loading indicator
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error, // Error icon for failed loading
                        color: Colors.red,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
