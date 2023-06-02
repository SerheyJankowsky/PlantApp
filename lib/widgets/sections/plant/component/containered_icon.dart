import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/constants.dart';

class ContaineredIcon extends StatelessWidget {
  const ContaineredIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: 62,
      height: 62,
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 22,
              color: kPrimary.withOpacity(0.22),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
