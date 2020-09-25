import 'package:flutter/material.dart';

import '../constants.dart';

class CommonCardContent extends StatelessWidget {
  final String busName;
  final String busNumber;

  const CommonCardContent({Key key, this.busName, this.busNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Column(
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
    );
  }
}
