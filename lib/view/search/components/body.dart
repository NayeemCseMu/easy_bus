import 'package:easy_bus/components/history_and_search_content.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/custom_dropdown.dart';
import 'package:easy_bus/components/history_and_search_card.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:easy_bus/view/seat/seat_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Header(headerChild: DateAndResultCard()),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: getScreenHeight(15)),
                CustomDropDown(),
                ...List.generate(
                  4,
                  (index) => HistoryAndSearchCard(
                    press: () {
                      Navigator.pushNamed(context, SeatSelect.routeName);
                    },
                    cardChild: HistoryAndSearchCardContent(
                      busName: 'Ena Transportn',
                      busNumber: 'DHK METRO 3350',
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DateAndResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreeWidth(335),
      child: SizedBox(
        width: getScreeWidth(335),
        child: Row(
          children: [
            buildExpanded(title: 'Dec 3, 2020', color: kGoogleButtonColor),
            SizedBox(width: kDefaultPadding),
            buildExpanded(title: '21 results found', color: kTextGreenColor),
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded({String title, Color color, double flexSize}) {
    return Expanded(
      child: RoundContainer(
        marginValue: 0.0,
        editBoxDecoration: true,
        color: Colors.white,
        childWidget: Text(
          title,
          style: kMediumText.copyWith(color: color),
        ),
      ),
    );
  }
}
