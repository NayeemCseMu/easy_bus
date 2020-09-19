import 'package:flutter/material.dart';

import '../size.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.title, this.color, this.fontSize});
  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      child: FlatButton(
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getScreenHeight(27.5))),
        onPressed: () {},
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
