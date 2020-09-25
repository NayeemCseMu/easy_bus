import 'package:flutter/material.dart';

import '../constants.dart';

class ExpansionDescriptionCard extends StatelessWidget {
  final Widget cardChild;
  final Function press;

  ExpansionDescriptionCard({@required this.cardChild, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
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
    );
  }
}
