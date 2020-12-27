import 'package:flutter/material.dart';
import './constants.dart';

/* Screens */
import './screens/home/home_screen.dart';
// import './screens/details/details_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Plant App UI',
      theme: ThemeData(
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: appBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: appTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      // home: DetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
