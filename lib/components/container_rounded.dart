import 'package:flutter/material.dart';

import '../utilis/constants.dart';
import '../utilis/size.dart';

class RoundContainer extends StatelessWidget {
  RoundContainer(
      {this.childWidget,
      this.boxDecoration,
      this.editBoxDecoration = false,
      this.color,
      @required this.marginValue,
      this.height = 55.0});
  final Widget childWidget;
  final bool editBoxDecoration;
  final BoxDecoration boxDecoration;
  final Color color;
  final double marginValue;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: getScreenHeight(height),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.symmetric(horizontal: marginValue),
      /*we will use this for multiple time that's why we will edit this container
      decoration for our requirement by using switch editBoxDecoration true/false */
      decoration: editBoxDecoration
          ? kBoxDecoration.copyWith(
              color: color.withOpacity(1), boxShadow: [kCardBoxShadow])
          : kBoxDecoration,
      child: childWidget,
    );
  }
}
