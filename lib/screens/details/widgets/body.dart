import 'package:flutter/material.dart';
// import 'package:plant_app_ui/constants.dart';
// import 'package:plant_app_ui/constants.dart';

/* Widgets */
import './action_buttons.dart';
import './main_plant_image.dart';
import './title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: deviceSize.height * 0.8,
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                ActionButtons(deviceSize: deviceSize),
                MainPlantImage(deviceSize: deviceSize),
              ],
            ),
          ),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 400,
          ),
        ],
      ),
    );
  }
}
