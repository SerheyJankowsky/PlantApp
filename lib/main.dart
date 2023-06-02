import 'package:flutter/material.dart';
import 'package:test_2/app/routes.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant',
      onGenerateRoute: onGenerateRote,
      theme: ThemeData(
          primaryColor: kPrimary,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: AppBarTheme(backgroundColor: kPrimary)),
      home: const HomePage(),
    );
  }
}
