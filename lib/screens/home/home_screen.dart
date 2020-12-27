import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/* Widgets */
import './widgets/body.dart';
import './widgets/bottom_nav_bar.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () => print('menu pressed'),
        ),
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
