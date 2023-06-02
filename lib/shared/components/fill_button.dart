import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';

class FillButton extends StatelessWidget {
  const FillButton({super.key, required this.text, required this.onPress});

  final String text;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimary),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      ),
      child: Text(text),
    );
  }
}
