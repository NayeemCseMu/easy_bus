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
                Text(
                  'Ena Transport',
                  style: kBoldText,
                ),
                SizedBox(height: 5.0),
                Text('DHK METRO  0001', style: kMediumText),
                SizedBox(height: 15.0),
                Text('3:00 AM (21 nov 19) DHK to SYL', style: kBoldText),
                SizedBox(height: 5.0),
                Text('Seat no E1', style: kMediumText),
                SizedBox(height: 15.0),
                Text('Single Ticket', style: kSemiBoldText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
