import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

/* Widgets */
import './widgets/body.dart';
import './widgets/bottom_nav_bar.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(deviceSize: deviceSize),
    );
  }
}
