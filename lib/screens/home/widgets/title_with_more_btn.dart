import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    @required this.title,
    @required this.moreFn,
  }) : super(key: key);

  final String title;
  final Function moreFn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 25,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 7,
                    color: appPrimaryColor.withOpacity(.3),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: appPrimaryColor,
            onPressed: moreFn,
          ),
        ],
      ),
    );
  }
}
