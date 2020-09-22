import 'package:easy_bus/components/card_content.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/description_card.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Header(
          headerChild: RoundContainer(
            marginValue: kDefaultPadding,
            editBoxDecoration: true,
            color: Colors.white,
            childWidget: SizedBox(
              width: getScreeWidth(335),
              child: Text('Select Your Seats',
                  textAlign: TextAlign.center,
                  style: kBoldText.copyWith(
                      color: kTextGreenColor, fontSize: getTextSize(16))),
            ),
          ),
        ),
        DescriptionCard(
            largeCard: false,
            cardChild: CardContent(
              busName: 'Ena Transport',
              busNumber: 'DHK METRO 3350',
              isTicketDetail: true,
            )),
      ],
    );
  }
}
