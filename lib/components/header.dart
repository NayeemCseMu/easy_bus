import 'package:flutter/material.dart';

import '../utilis/constants.dart';
import '../utilis/size.dart';

class Header extends StatelessWidget {
  Header({@required this.headerChild});
  final Widget headerChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: getScreenHeight(140),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [kPrimaryColor, kSecondaryColor]),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(getScreenHeight(27.5)),
                bottomLeft: Radius.circular(getScreenHeight(27.5)),
              ),
            ),
          ),
          Positioned(top: 100, child: headerChild),
        ],
      ),
    );
  }
}
