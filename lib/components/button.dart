import 'package:easy_bus/utilis/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilis/size.dart';

class Button extends CustomRaisedButton {
  final String title;
  final Color color;
  final double fontSize;
  final Function press;
  Button({
    @required this.title,
    this.color,
    this.fontSize,
    this.press,
  }) : super(
          buttonChild: Text(
            title.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w600),
          ),
          color: color,
          fontSize: fontSize,
          press: press,
        );
}

class ButtonIcon extends CustomRaisedButton {
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final Function press;
  ButtonIcon({
    @required this.title,
    @required this.icon,
    this.color,
    this.fontSize,
    this.press,
  }) : super(
          buttonChild: Row(
            children: [
              SizedBox(width: 10),
              SvgPicture.asset(icon),
              SizedBox(width: 10),
              Text(
                title.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          color: color,
          fontSize: fontSize,
          press: press,
        );
}

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    this.color,
    this.press,
    this.fontSize,
    this.buttonChild,
  });

  final Color color;
  final Function press;
  final double fontSize;
  final Widget buttonChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(55),
      width: getScreeWidth(335),
      child: RaisedButton(
          elevation: 1.0,
          color: color,
          onPressed: press,
          shape: buildRoundedRectangleBorder(),
          disabledColor: kPrimaryColor.withOpacity(0.5),
          disabledTextColor: Colors.black54,
          child: buttonChild),
    );
  }

  RoundedRectangleBorder buildRoundedRectangleBorder() {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(getScreenHeight(27.5)));
  }
}
