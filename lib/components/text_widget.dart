import 'package:flutter/material.dart';

import '../constants.dart';

class BoldText extends StatelessWidget {
  BoldText({@required this.title, this.color, this.fontSize});
  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: kTextGreenColor,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20),
    );
  }
}

class SemiBoldText extends StatelessWidget {
  SemiBoldText(
      {@required this.title,
      this.color,
      fontStyle: FontStyle.normal,
      this.fontSize});
  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 20),
    );
  }
}

class MediumText extends StatelessWidget {
  MediumText({@required this.title, this.color, this.fontSize});
  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: kTextColor, fontWeight: FontWeight.w500, fontSize: 16),
    );
  }
}
