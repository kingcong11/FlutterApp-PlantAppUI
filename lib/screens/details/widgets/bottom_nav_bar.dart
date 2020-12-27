import 'package:flutter/material.dart';
import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Container(
            width: deviceSize.width / 2,
            height: double.infinity,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
              ),
              color: appPrimaryColor,
              child: Text(
                'Buy Now',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: deviceSize.width / 2,
            height: double.infinity,
            child: FlatButton(
              color: appBackgroundColor,
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  color: appTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}