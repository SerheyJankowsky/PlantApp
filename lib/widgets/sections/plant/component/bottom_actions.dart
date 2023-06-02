import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimary),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            child: const Text(
              "By Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Expanded(
            child: TextButton(
          child: const Text(
            "Descriptions",
            style: TextStyle(color: kTextColor),
          ),
          onPressed: () {},
        ))
      ],
    );
  }
}
