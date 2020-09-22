import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CardContent extends StatelessWidget {
  final String busName;
  final String busNumber;
  final bool isSeatDetail;
  final bool isTicketDetail;

  const CardContent(
      {Key key,
      this.busName,
      this.busNumber,
      this.isSeatDetail = false,
      this.isTicketDetail = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                busName,
                style: kBoldText,
              ),
              SizedBox(height: 5.0),
              Text(busNumber, style: kMediumText),
            ],
          ),
        ),
        isTicketDetail
            ? Row(
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
              )
            : SizedBox(),
        isSeatDetail
            ? Row(
                children: [
                  seatsDetails(
                      title: 'Available seats', subtitle: '35 out of 40'),
                  seatsDetails(title: 'Fare', subtitle: '\$40 /person'),
                ],
              )
            : SizedBox(),
      ],
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
