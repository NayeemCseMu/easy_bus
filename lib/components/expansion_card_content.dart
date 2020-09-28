import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size.dart';

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
            buildListTile(title: busName, subtitle: busNumber),
            SizedBox(height: kDefaultPadding),
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
          ],
        ),
        trailing: SvgPicture.asset('assets/icons/arrow_icon.svg'),
        children: [
          SizedBox(height: kDefaultPadding),
          Divider(
            indent: kDefaultPadding,
            endIndent: kDefaultPadding,
            color: Colors.black,
          ),
          SizedBox(height: kDefaultPadding / 2),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: buildListTile(title: 'Driver', subtitle: 'Location')),
              Expanded(
                  flex: 1,
                  child:
                      buildListTile(title: 'Supervisor', subtitle: 'Location')),
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
