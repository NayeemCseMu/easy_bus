import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

class HeaderText extends StatelessWidget {
  HeaderText({Key key, this.title, this.subtitle, this.color});

  final String title, subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style:
              kBoldText.copyWith(color: kPrimaryColor, shadows: [kTextShadow]),
        ),
        SizedBox(height: getScreenHeight(15)),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: kMediumText.copyWith(color: color),
        ),
      ],
    );
  }
}
