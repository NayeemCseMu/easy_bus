import 'package:easy_bus/components/common_card_content.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/custom_dropdown.dart';
import 'package:easy_bus/components/common_description_card.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:easy_bus/view/seat/seat_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(headerChild: DateAndResultCard()),
          SizedBox(height: getScreenHeight(15)),
          CustomDropDown(),
          ...List.generate(
              4,
              (index) => CommonDescriptionCard(
                    press: () {
                      Navigator.pushNamed(context, SeatSelect.seat_select);
                    },
                    cardChild: CommonCardContent(
                      busName: 'Ena Trasn',
                      busNumber: '5f4f',
                    ),
                  ))
        ],
      ),
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
