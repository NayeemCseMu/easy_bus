import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SeatAndDriverCardContent extends StatelessWidget {
  final String busName;
  final String busNumber;
  final bool isSeatDetail;
  final bool isTicketDetail;

  const SeatAndDriverCardContent(
      {Key key,
      this.busName,
      this.busNumber,
      this.isSeatDetail = false,
      this.isTicketDetail = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        childrenPadding: EdgeInsets.only(bottom: 0.0),
        tilePadding: EdgeInsets.all(0.0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
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
        subtitle: Row(
          children: [
            timeAndlocation(
                icon: 'assets/icons/train.svg',
                title: 'Time',
                subtitle: 'Location'),
            SizedBox(width: kDefaultPadding),
            timeAndlocation(
                icon: 'assets/icons/location.svg',
                title: 'Time',
                subtitle: 'Location'),
          ],
        ),
        trailing: SvgPicture.asset('assets/icons/arrow_icon.svg'),
        children: [
          Row(
            children: [
              seatsDetails(title: 'Driver', subtitle: 'Name', mobileNo: '+880'),
              SizedBox(width: kDefaultPadding),
              seatsDetails(
                  title: 'Supervisor', subtitle: 'Name', mobileNo: '+880'),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Route',
            style: kSemiBoldText.copyWith(
                color: kTextColor, fontSize: getTextSize(20)),
          ),
        ],
      ),
    );
  }

  Expanded timeAndlocation({String icon, String title, String subtitle}) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.all(0.0),
        leading: SvgPicture.asset(icon),
        title: Text(title, style: kBoldText.copyWith(fontSize: 18)),
        subtitle: Text(
          subtitle,
          style: kMediumText,
        ),
      ),
    );
  }

  Expanded seatsDetails({String title, String subtitle, String mobileNo}) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.all(0.0),
        title: Text(title, style: kBoldText.copyWith(fontSize: 18)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kDefaultPadding / 4),
            Text(subtitle, style: kMediumText),
            Text(mobileNo, style: kMediumText),
          ],
        ),
      ),
    );
  }
}
