import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class Header extends StatelessWidget {
  Header({@required this.headerChild});
  final Widget headerChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(168),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: getScreenHeight(140),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [kPrimaryColor, kSecondaryColor]),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(getScreenHeight(27.5)),
                    bottomLeft: Radius.circular(getScreenHeight(27.5)))),
          ),
          Positioned(bottom: 0, child: headerChild),
        ],
      ),
    );
  }
}
