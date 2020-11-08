import 'package:flutter/material.dart';

import '../size.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.title, this.color, this.fontSize, this.press});
  final String title;
  final Color color;
  final double fontSize;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      child: RaisedButton(
        elevation: 1.0,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getScreenHeight(27.5))),
        onPressed: press,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
