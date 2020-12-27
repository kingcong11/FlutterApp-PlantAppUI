import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: deviceSize.height * 0.2 - 27,
          padding: const EdgeInsets.only(
            left: appDefaultPadding,
            right: appDefaultPadding,
            bottom: appDefaultPadding + 35,
          ),
          decoration: BoxDecoration(
            color: appPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi Plantita!',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 55,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: appDefaultPadding,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: appDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: appPrimaryColor.withOpacity(.2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: appPrimaryColor.withOpacity(.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                SvgPicture.asset('assets/icons/search.svg')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
