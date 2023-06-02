import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/shared/types/recomendation_card.dart';

class HeroPreview extends StatelessWidget {
  const HeroPreview({
    super.key,
    required this.size,
    required this.plant,
  });

  final Size size;
  final RecommendCard plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(63),
          topLeft: Radius.circular(63),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: kPrimary.withOpacity(0.29),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(plant.image),
          fit: BoxFit.cover,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
