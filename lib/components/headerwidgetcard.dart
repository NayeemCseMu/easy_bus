import 'package:flutter/material.dart';

import '../utilis/constants.dart';
import '../utilis/size.dart';

class HeaderWidgetCard extends StatelessWidget {
  HeaderWidgetCard({this.childWidget, this.height = 55.0});
  final Widget childWidget;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: getScreenHeight(height),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: kBoxDecoration,
      child: childWidget,
    );
  }
}
