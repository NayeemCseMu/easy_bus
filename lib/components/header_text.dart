import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getTextSize(20),
              fontWeight: FontWeight.w700,
              shadows: [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    color: Color.fromRGBO(0, 0, 0, 0.25))
              ]),
        ),
        SizedBox(height: getScreenHeight(15)),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: kTextGreyColor, fontSize: getTextSize(16)),
        ),
      ],
    );
  }
}
