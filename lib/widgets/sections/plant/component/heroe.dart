import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/shared/types/recomendation_card.dart';

import 'heroe_preview.dart';
import 'left_side_hero.dart';

class HeroHeader extends StatelessWidget {
  const HeroHeader({
    super.key,
    required this.size,
    required this.plant,
  });

  final Size size;
  final RecommendCard plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            const LeftSideHero(),
            HeroPreview(size: size, plant: plant)
          ],
        ),
      ),
    );
  }
}
