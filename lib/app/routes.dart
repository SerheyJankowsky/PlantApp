import 'package:flutter/material.dart';
import 'package:test_2/pages/home.dart';
import 'package:test_2/pages/plant.dart';

final Map<String, dynamic> routes = {
  '/': (context) => const HomePage(),
  "/plant": (context) => const PlantPage()
};

Route<dynamic> onGenerateRote(RouteSettings settings) {
  final String routeName = settings.name!;

  if (routes.containsKey(routeName)) {
    final WidgetBuilder builder = routes[routeName];

    return MaterialPageRoute(
        builder: (context) => builder(context), settings: settings);
  }
  return MaterialPageRoute(
      builder: (context) => const HomePage(), settings: settings);
}
