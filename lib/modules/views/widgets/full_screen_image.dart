import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // Close the dialog when tapped
      },
      child: Container(
        color: Colors.black.withOpacity(0.9), // Dark underlay
        child: Center(
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain, // Adjust to fit the image within the screen
          ),
        ),
      ),
    );
  }
}
