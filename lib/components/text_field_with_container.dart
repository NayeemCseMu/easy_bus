import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({this.hint, this.icon});
  final String hint;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: kBoxDecoration,
      child: TextField(
        style: TextStyle(color: Colors.black, fontSize: getTextSize(16)),
        decoration: kInputDecoration.copyWith(hintText: hint, prefixIcon: icon),
      ),
    );
  }
}
