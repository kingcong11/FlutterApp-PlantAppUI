import 'package:flutter/material.dart';
import '../../../constants.dart';

/* Widgets */
import './header_with_searchbar.dart';
import './title_with_more_btn.dart';
import './recommended_plants.dart';
import './featured_plants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: deviceSize.height * 0.2,
              margin: const EdgeInsets.only(bottom: appDefaultPadding * 2.5),
              child: HeaderWithSearchBar(deviceSize: deviceSize),
            ),
            TitleWithMoreBtn(title: 'Recommended', moreFn: () {}),
            RecommendedPlants(deviceSize: deviceSize),
            TitleWithMoreBtn(title: 'Featured Plants', moreFn: () {}),
            FeaturedPlants(deviceSize: deviceSize),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
