import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_2/shared/components/recomend_card.dart';
import 'package:test_2/shared/types/recomendation_card.dart';

class RecommendationBlock extends StatefulWidget {
  const RecommendationBlock(
      {super.key, required this.size, required this.onPress});

  final Size size;
  final onPress;

  @override
  State<RecommendationBlock> createState() => _RecommendationBlock();
}

class _RecommendationBlock extends State<RecommendationBlock> {
  List<RecommendCard> cardData = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    try {
      final String response =
          await rootBundle.loadString("assets/sample/recommendation/data.json");
      final data = await json.decode(response);
      setState(() {
        cardData = data["recommendation"]
            .map<RecommendCard>((r) => RecommendCard.fromJson(r))
            .toList();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        final RecommendCard item = cardData[index];
        return RecomendCard(
            country: item.country,
            image: item.image,
            title: item.title,
            price: item.price,
            size: widget.size,
            onPress: () {
              widget.onPress(item);
            });
      },
    );
  }
}
