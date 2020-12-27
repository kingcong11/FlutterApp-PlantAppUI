import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details/details_screen.dart';
import './recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  void viewDetails(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      /* you can change it to listview or listview builder. I just made it single child scroll view
      only for the purpose of showing the ui design */
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          RecommendedPlantCard(
            deviceSize: deviceSize,
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            pressFn: () => viewDetails(context),
          ),
          RecommendedPlantCard(
            deviceSize: deviceSize,
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 400,
            pressFn: () => viewDetails(context),
          ),
          RecommendedPlantCard(
            deviceSize: deviceSize,
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            pressFn: () => viewDetails(context),
          ),
        ],
      ),
    );
  }
}
