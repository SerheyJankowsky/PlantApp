import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';

class FuturePlantCard extends StatelessWidget {
  const FuturePlantCard({
    super.key,
    required this.image,
    required this.onPress,
  });

  final String image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
