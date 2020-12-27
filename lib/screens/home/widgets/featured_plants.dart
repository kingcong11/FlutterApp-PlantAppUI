import 'package:flutter/material.dart';

/* Widgets */
import './featured_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturePlantCard(
            deviceSize: deviceSize,
            image: 'assets/images/bottom_img_1.png',
            pressFn: () {},
          ),
          FeaturePlantCard(
            deviceSize: deviceSize,
            image: 'assets/images/bottom_img_2.png',
            pressFn: () {},
          ),
        ],
      ),
    );
  }
}
