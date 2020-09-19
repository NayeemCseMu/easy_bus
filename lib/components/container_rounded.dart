import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({this.childWidget});
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: kBoxDecoration,
      child: childWidget,
    );
  }
}
