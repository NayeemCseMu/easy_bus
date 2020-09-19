import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class RoundContainer extends StatelessWidget {
  RoundContainer(
      {this.childWidget,
      this.boxDecoration,
      this.editBoxDecoration = false,
      this.color});
  final Widget childWidget;
  final bool editBoxDecoration;
  final BoxDecoration boxDecoration;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
