import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    @required this.deviceSize,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.price,
    @required this.pressFn,
  }) : super(key: key);

  final Size deviceSize;
  final String image;
  final String title;
  final String country;
  final double price;
  final Function pressFn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressFn,
      child: Container(
        width: deviceSize.width * 0.4,
        margin: const EdgeInsets.only(
          left: appDefaultPadding,
          top: appDefaultPadding / 2,
          bottom: appDefaultPadding * 2.5,
        ),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: appPrimaryColor.withOpacity(.3),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: TextStyle(
                            color: appTextColor,
                          ),
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: appPrimaryColor.withOpacity(.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$400',
                    style: TextStyle(
                      color: appPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
