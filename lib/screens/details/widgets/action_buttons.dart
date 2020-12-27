import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  /* Builder */
  Widget actionCardBuilder(String image, Size deviceSize, Function pressFn) {
    return GestureDetector(
      onTap: pressFn,
      child: Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.symmetric(vertical: deviceSize.height * 0.03),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 25,
              color: appPrimaryColor.withOpacity(.3),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ],
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: appDefaultPadding * 2.5,
        ),
        child: Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black54,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Spacer(),
            actionCardBuilder('assets/icons/sun.svg', deviceSize, () {}),
            actionCardBuilder('assets/icons/icon_2.svg', deviceSize, () {}),
            actionCardBuilder('assets/icons/icon_3.svg', deviceSize, () {}),
            actionCardBuilder('assets/icons/icon_4.svg', deviceSize, () {}),
          ],
        ),
      ),
    );
  }
}
