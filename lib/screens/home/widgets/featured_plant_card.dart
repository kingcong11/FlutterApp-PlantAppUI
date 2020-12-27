import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    @required this.deviceSize,
    @required this.image,
    @required this.pressFn,
  }) : super(key: key);

  final Size deviceSize;
  final String image;
  final Function pressFn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: deviceSize.width * 0.8,
      margin: const EdgeInsets.only(
        bottom: appDefaultPadding * 2.5,
        top: appDefaultPadding / 2,
        left: appDefaultPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
