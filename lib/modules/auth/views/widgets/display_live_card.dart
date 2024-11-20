import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';
import 'package:prelura_app/modules/auth/views/widgets/live_card.dart';

class DisplayLiveCard extends StatelessWidget {
  const DisplayLiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> carouselItems = List.generate(
      6,
      (index) => LiveCard(
        height: 200,
      ),
    );

    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: false,
        padEnds: false,
        disableCenter: true,
        viewportFraction: 0.9,
      ),
      items: carouselItems,
    );
  }
}
