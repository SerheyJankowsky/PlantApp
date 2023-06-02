import 'package:flutter/material.dart';
import 'package:test_2/shared/components/header_with_search.dart';
import 'package:test_2/shared/components/title_with_button_underline.dart';
import 'package:test_2/widgets/sections/home/feature_section.dart';
import 'package:test_2/widgets/sections/home/recommended.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(size: size),
          TitleWithMoreButtonUnderline(text: "Recomended", onPress: () {}),
          RecommendationSection(size: size),
          TitleWithMoreButtonUnderline(text: "Featured Plants", onPress: () {}),
          const FeatureSection(),
        ],
      ),
    );
  }
}
