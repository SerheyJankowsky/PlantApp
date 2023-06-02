import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/shared/types/recomendation_card.dart';

import 'component/bottom_actions.dart';
import 'component/bottom_info.dart';
import 'component/heroe.dart';

class PlantBody extends StatelessWidget {
  const PlantBody({super.key});

  void onPress(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RecommendCard plant;
    RouteSettings settings = ModalRoute.of(context)!.settings;
    plant = settings.arguments as RecommendCard;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeroHeader(size: size, plant: plant),
          BottomInfo(plant: plant),
          const SizedBox(
            height: kDefaultPadding,
          ),
          BottomActions(size: size)
        ],
      ),
    );
  }
}
