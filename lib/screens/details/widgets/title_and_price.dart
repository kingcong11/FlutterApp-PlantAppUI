import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    @required this.title,
    @required this.country,
    @required this.price,
  }) : super(key: key);

  final String title;
  final String country;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: appTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                    text: country,
                    style: TextStyle(
                      color: appPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: TextStyle(
              color: appPrimaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
