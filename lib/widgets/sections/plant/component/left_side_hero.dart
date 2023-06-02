import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/constants.dart';
import 'package:test_2/widgets/sections/plant/component/containered_icon.dart';

class LeftSideHero extends StatelessWidget {
  const LeftSideHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
              ),
            ),
            const Spacer(),
            const ContaineredIcon(
              icon: "assets/icons/sun.svg",
            ),
            const ContaineredIcon(
              icon: "assets/icons/icon_2.svg",
            ),
            const ContaineredIcon(
              icon: "assets/icons/icon_3.svg",
            ),
            const ContaineredIcon(
              icon: "assets/icons/icon_4.svg",
            ),
          ],
        ),
      ),
    );
  }
}
