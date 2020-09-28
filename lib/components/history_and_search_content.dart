import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class HistoryAndSearchCardContent extends StatelessWidget {
  final String busName;
  final String busNumber;

  const HistoryAndSearchCardContent({Key key, this.busName, this.busNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildListTile(title: busName, subtitle: busNumber),
          Row(
            children: [
              Expanded(
                  flex: 2,
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
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: buildListTile(
                      title: 'Available seats', subtitle: '35 out of 40')),
              Expanded(
                  flex: 1,
                  child:
                      buildListTile(title: 'Fare', subtitle: '\$40 /person')),
            ],
          ),
        ],
      ),
    );
  }

  Row buildListTile(
      {String icon, String title, String subtitle, bool isIcon = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isIcon ? SvgPicture.asset(icon) : SizedBox(width: 0.0),
        SizedBox(width: kDefaultPadding / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: kBoldText.copyWith(fontSize: getTextSize(18))),
            SizedBox(height: kDefaultPadding / 4),
            Text(subtitle,
                style:
                    kMediumText.copyWith(color: Colors.black.withOpacity(0.5))),
          ],
        ),
      ],
    );
  }
}
