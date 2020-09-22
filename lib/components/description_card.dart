import 'package:flutter/material.dart';
import '../constants.dart';

class DescriptionCard extends StatelessWidget {
  final bool largeCard;
  final Widget cardChild;

  DescriptionCard({this.largeCard = false, @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      margin: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [kCardBoxShadow]),
      child: cardChild,
    );
  }
}
