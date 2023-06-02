import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';

class TitleUnderline extends StatelessWidget {
  const TitleUnderline({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(
                right: kDefaultPadding / 4,
              ),
              height: 7,
              decoration: BoxDecoration(color: kPrimary.withOpacity(0.2)),
            ),
          ),
        ],
      ),
    );
  }
}
