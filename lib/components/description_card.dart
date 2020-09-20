import 'package:easy_bus/components/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 1.9,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [kCardBoxShadow]),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SemiBoldText(title: 'Ena Transport'),
                SizedBox(height: 5.0),
                MediumText(title: 'DHK METRO  0001'),
                SizedBox(height: 15.0),
                SemiBoldText(title: '3:00 AM (21 nov 19) DHK to SYL'),
                SizedBox(height: 5.0),
                MediumText(title: 'Seat no E1'),
                SizedBox(height: 15.0),
                SemiBoldText(title: 'Single Ticket'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
