import 'package:flutter/material.dart';
import '../constants.dart';

class DescriptionCard extends StatelessWidget {
  final bool largeCard;
  final Widget cardChild;

  DescriptionCard({this.largeCard = false, @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: largeCard ? 1.45 : 1.9,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [kCardBoxShadow]),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2, vertical: kDefaultPadding),
            child: cardChild,
          ),
        ),
      ),
    );
  }
}
