import 'package:flutter/material.dart';

class MainPlantImage extends StatelessWidget {
  const MainPlantImage({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceSize.height * 0.8,
      width: deviceSize.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: Colors.black54,
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/img.png'),
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20),
        child: Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.more_horiz, size: 30),
        ),
      ),
    );
  }
}
