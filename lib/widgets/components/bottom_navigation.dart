import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_2/constants.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  const DefaultBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimary.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/flower.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
          ),
        ],
      ),
    );
  }
}
