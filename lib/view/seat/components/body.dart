import 'package:easy_bus/components/expansion_card_content.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/expansion_description_card.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/model/seats_icon.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rules_and_seat_information_with_price.dart';
import 'seat_icon_visual_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Header(
            headerChild: RoundContainer(
              marginValue: kDefaultPadding,
              editBoxDecoration: true,
              color: Colors.white,
              childWidget: Text('Select Your Seats',
                  textAlign: TextAlign.center,
                  style: kBoldText.copyWith(
                      color: kTextGreenColor, fontSize: getTextSize(16))),
            ),
          ),
          ExpansionCard(
              cardChild: ExpansionCardContent(
            busName: 'Ena Transport',
            busNumber: 'DHK METRO 3350',
          )),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
            child: MeaningOfSeatIconColor(),
          ),
          Wrap(
            children: [
              ExpansionCard(
                cardChild: SeatIconVisualForSelection(),
              ),
              RulesAndSeatInformationWithPrice(),
            ],
          ),
          RoundButton(
            press: () {},
            title: 'Confirm',
            color: kPrimaryColor,
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class MeaningOfSeatIconColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
          seatList.length,
          (index) => Column(
            children: [
              SvgPicture.asset(
                seatList[index].icon,
                color: seatList[index].color,
              ),
              SizedBox(height: 8.0),
              Text(
                seatList[index].title,
                style: kMediumText.copyWith(color: seatList[index].color),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }
}
