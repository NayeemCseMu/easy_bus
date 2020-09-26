import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ExpansionCardContent extends StatelessWidget {
  final String busName;
  final String busNumber;

  const ExpansionCardContent({Key key, this.busName, this.busNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,

        tilePadding: EdgeInsets.all(0.0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  busName,
                  style: kBoldText,
                ),
                SizedBox(height: 10.0),
                Text(busNumber, style: kMediumText),
              ],
            ),
          ],
        ),
        // trailing: SvgPicture.asset('assets/icons/arrow_icon.svg'),

        children: [
          ListTile(
              contentPadding: EdgeInsets.all(0.0),
              leading: SvgPicture.asset('assets/icons/train.svg'),
              title: Text('Time'),
              subtitle: Text('location')),
        ],
      ),
    );
  }
}
