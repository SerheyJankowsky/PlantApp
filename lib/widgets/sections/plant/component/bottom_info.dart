import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/shared/types/recomendation_card.dart';

class BottomInfo extends StatelessWidget {
  const BottomInfo({
    super.key,
    required this.plant,
  });

  final RecommendCard plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: plant.title + "\n",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: plant.country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimary,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$" + plant.price.toString(),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: kPrimary,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
