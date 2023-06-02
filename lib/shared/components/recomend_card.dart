import 'package:flutter/material.dart';
import 'package:test_2/constants.dart';

class RecomendCard extends StatelessWidget {
  const RecomendCard({
    super.key,
    required this.size,
    required this.title,
    required this.country,
    required this.image,
    required this.price,
    required this.onPress,
  });

  final Size size;

  final String title, country, image;

  final int price;

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      // clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            clipBehavior: Clip.hardEdge,
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 30,
                        color: kPrimary.withOpacity(0.23)),
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: kTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimary.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: kPrimary, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
