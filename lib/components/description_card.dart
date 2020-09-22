import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class DescriptionCard extends StatelessWidget {
  final bool largeCard;

  DescriptionCard({this.largeCard = false});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Text(
                        'Ena Transport',
                        style: kBoldText,
                      ),
                      SizedBox(height: 5.0),
                      Text('DHK METRO  0001', style: kMediumText),
                    ],
                  ),
                ),
                Row(
                  children: [
                    timeAndlocation(
                        icon: 'assets/icons/train.svg',
                        title: 'Time',
                        subtitle: 'Location'),
                    timeAndlocation(
                        icon: 'assets/icons/location.svg',
                        title: 'Time',
                        subtitle: 'Location'),
                  ],
                ),

                Row(
                  children: [
                    seatsDetails(
                        title: 'Available seats', subtitle: '35 out of 40'),
                    seatsDetails(title: 'Fare', subtitle: '\$40 /person'),
                  ],
                ),
                // Text('3:00 AM (21 nov 19) DHK to SYL', style: kBoldText),
                // SizedBox(height: 5.0),
                // Text('Seat no E1', style: kMediumText),
                // SizedBox(height: 15.0),
                // Text('Single Ticket', style: kSemiBoldText),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded timeAndlocation({String icon, String title, String subtitle}) {
    return Expanded(
      child: ListTile(
        leading: SvgPicture.asset(icon),
        title: Align(
          child: Text(title, style: kBoldText.copyWith(fontSize: 18)),
          alignment: Alignment(-2.2, 0),
        ),
        subtitle: Align(
            child: Text(
              subtitle,
              style: kMediumText,
            ),
            alignment: Alignment(-3.5, 0)),
      ),
    );
  }

  Expanded seatsDetails({String title, String subtitle}) {
    return Expanded(
      child: ListTile(
        title: Text(title, style: kBoldText.copyWith(fontSize: 18)),
        subtitle: Text(subtitle, style: kMediumText),
      ),
    );
  }
}
