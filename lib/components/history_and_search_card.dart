import 'package:flutter/material.dart';

import '../utilis/constants.dart';

class HistoryAndSearchCard extends StatelessWidget {
  final Widget cardChild;
  final Function press;

  HistoryAndSearchCard({@required this.cardChild, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AspectRatio(
        aspectRatio: 1.7,
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
