import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key});

  @override
  Widget build(BuildContext context) {
    // Define an array of 6 items
    final List<Widget> carouselItems = List.generate(
      6, // Ensures the array has exactly 6 items
      (index) => DisplayCard(), // Each item is a `DisplayCard` widget
    );

    return CarouselSlider(
      options: CarouselOptions(
        height: 270,
        autoPlay: true,
        enlargeCenterPage: false,
        padEnds: false,
        disableCenter: true,
        viewportFraction: 0.4,
      ),
      items: carouselItems,
    );
  }
}
