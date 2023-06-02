import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/widgets/sections/home/component/recommenation_list.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding / 2),
      width: double.infinity,
      height: 281,
      child: RecommendationBlock(
        size: size,
        onPress: (item) {
          Navigator.pushNamed(context, "/plant", arguments: item);
        },
      ),
    );
  }
}
