import 'package:flutter/material.dart';

import '../constants.dart';

class ExpansionCard extends StatelessWidget {
  final Widget cardChild;
  final Function press;

  ExpansionCard({@required this.cardChild, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
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
