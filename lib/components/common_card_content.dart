import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: buildListTile(
                      isIcon: true,
                      icon: 'assets/icons/train.svg',
                      title: 'Time',
                      subtitle: 'Location')),
              Expanded(
                  flex: 1,
                  child: buildListTile(
                      isIcon: true,
                      icon: 'assets/icons/location.svg',
                      title: 'Time',
                      subtitle: 'Location')),
            ],
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(
      {String icon, String title, String subtitle, bool isIcon = false}) {
    return ListTile(
        contentPadding: EdgeInsets.all(0.0),
        leading: isIcon ? SvgPicture.asset(icon) : SizedBox(width: 0.0),
        title: Text(title),
        subtitle: Text(subtitle));
  }
}
