import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/card.dart';
import 'package:prelura_app/shared/mock_data.dart';

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Dynamically adjust grid column count or aspect ratio based on constraints
        final crossAxisCount =
            constraints.maxWidth > 600 ? 3 : 2;

        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.58,
          ),
          itemCount: mockData.length,
          itemBuilder: (context, index) {
            return DisplayCard(itemData: mockData[index]);
          },
        );
      },
    );
  }
}
