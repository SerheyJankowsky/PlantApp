import 'package:flutter/material.dart';
import 'package:test_2/widgets/sections/plant/plant_body.dart';

class PlantPage extends StatelessWidget {
  const PlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PlantBody(),
    );
  }
}
