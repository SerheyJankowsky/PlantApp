import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/shared/components/fill_button.dart';
import 'package:test_2/shared/components/underline_text.dart';

class TitleWithMoreButtonUnderline extends StatelessWidget {
  const TitleWithMoreButtonUnderline({
    super.key,
    required this.text,
    required this.onPress,
  });

  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TitleUnderline(
            text: text,
          ),
          FillButton(
            text: "More",
            onPress: onPress,
          ),
        ],
      ),
    );
  }
}
