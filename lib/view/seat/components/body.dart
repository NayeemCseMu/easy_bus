import 'package:easy_bus/components/expansion_card_content.dart';
import 'package:easy_bus/components/headerwidgetcard.dart';
import 'package:easy_bus/components/expansion_description_card.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/utilis/constants.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/provider/tab_item.dart';
import 'package:easy_bus/utilis/size.dart';
import 'package:easy_bus/view/payment/payment_screen.dart';
import 'package:easy_bus/view/search/search_ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'rules_and_seat_information_with_price.dart';
import 'seat_icon_visual_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeTab>(context);
    return Column(
      children: <Widget>[
        Header(
          headerChild: HeaderWidgetCard(
            childWidget: SizedBox(
              width: getScreeWidth(295),
              child: Text('Select Your Seats',
                  textAlign: TextAlign.center,
                  style: kBoldText.copyWith(
                      color: kTextGreenColor, fontSize: getTextSize(16))),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpansionCard(
                    cardChild: ExpansionCardContent(
                  busName: 'Ena Transport',
                  busNumber: 'DHK METRO 3350',
                )),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding),
                  child: MeaningOfSeatIconColor(),
                ),
                Wrap(
                  children: [
                    ExpansionCard(
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/icons/wheel.svg'),
                          SizedBox(height: 10.0),
                          TapIconToSelect(),
                        ],
                      ),
                    ),
                    RulesAndSeatInformationWithPrice(),
                  ],
                ),
                SizedBox(height: getScreenHeight(20.0)),
                Button(
                  title: provider.tripStatus == TripStatus.Single
                      ? 'Confirm'
                      : 'Continue',
                  color: kPrimaryColor,
                  fontSize: getTextSize(18),
                  press: provider.seatNumber.isEmpty
                      ? null
                      : () {
                          Navigator.of(context).pushNamed(
                              provider.tripStatus == TripStatus.Single
                                  ? PaymentScreen.routeName
                                  : SearchTicket.routeName);
                        },
                ),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
      ],
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
