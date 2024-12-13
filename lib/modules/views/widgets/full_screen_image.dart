import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FullScreenImage extends StatelessWidget {
  final String? imagePath;
  final String? imageUrl;

  const FullScreenImage({Key? key, this.imageUrl, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // Close the dialog when tapped
      },
      child: Container(
        color: Colors.black.withOpacity(0.9), // Dark underlay
        child: Center(
          child: imagePath != null
              ? Image.file(
                  File(imagePath!), // Use imagePath for local files
                  fit: BoxFit
                      .contain, // Adjust to fit the image within the screen
                )
              : imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: imageUrl!, // Use imageUrl for network images
                      fit: BoxFit.contain,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(), // Loading indicator
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error, // Error icon if loading fails
                        color: Colors.red,
                      ),
                    )
                  : const Icon(
                      Icons.image_not_supported,
                      color: Colors.white,
                      size: 100,
                    ), // Fallback icon if no image is provided
        ),
      ),
    );
  }
}
