import 'package:easy_bus/model/bus_search_result.dart';
import 'package:easy_bus/model/history.dart';
import 'package:flutter/material.dart';
import '../utilis/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilis/constants.dart';

class HistoryAndSearchCardContent extends StatelessWidget {
  final int index;
  final bool isHistory;

  const HistoryAndSearchCardContent({this.index, this.isHistory = false});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildListTile(
              title: searchList[index].title ?? '',
              subtitle: searchList[index].busNumberPlate ?? ''),
          isHistory
              ? buildListTile(
                  title: visitList[index].travelDate,
                  subtitle: visitList[index].seatNo,
                )
              : Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 2),
                    Expanded(
                        flex: 1,
                        child: buildListTile(
                            isIcon: true,
                            icon: 'assets/icons/train.svg',
                            title: searchList[index].leaveTime,
                            subtitle: searchList[index].leavePlace)),
                    Expanded(
                        flex: 1,
                        child: buildListTile(
                            isIcon: true,
                            icon: 'assets/icons/location.svg',
                            title: searchList[index].arriveTime,
                            subtitle: searchList[index].arrivePlace)),
                  ],
                ),
          isHistory
              ? buildListTile(title: visitList[index].ticketType, subtitle: '')
              : Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: buildListTile(
                            title: 'Available seats',
                            subtitle: searchList[index].availableSeat)),
                    Expanded(
                        flex: 1,
                        child: buildListTile(
                            title: 'Fare',
                            subtitle:
                                '\$${searchList[index].ticketPrice} /person')),
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
