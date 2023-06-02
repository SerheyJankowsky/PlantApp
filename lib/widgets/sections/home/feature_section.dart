import 'package:flutter/material.dart';
import 'package:test_2/widgets/sections/home/component/plant_card.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FuturePlantCard(
            image: "assets/images/bottom_img_1.png",
            onPress: () {},
          ),
          FuturePlantCard(
            image: "assets/images/bottom_img_2.png",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
