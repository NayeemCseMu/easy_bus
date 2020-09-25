import 'package:flutter/material.dart';

import '../constants.dart';

class CommonDescriptionCard extends StatelessWidget {
  final Widget cardChild;
  final Function press;

  CommonDescriptionCard({@required this.cardChild, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AspectRatio(
        aspectRatio: 1.9,
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [kCardBoxShadow]),
          child: cardChild,
        ),
      ),
    );
  }
}
