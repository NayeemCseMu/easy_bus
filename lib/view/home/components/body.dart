import 'package:easy_bus/model/history.dart';
import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import '../../../components/history_and_search_card.dart';
import '../../../components/history_and_search_content.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/header.dart';
import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

import 'tab_button.dart';
import 'ticket_search_field_&_button.dart';

enum button { one, round }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(
          headerChild: CustomDropDown(),
        ),
        getVerticalSpace(15),

        //this portion contain TextField and Search Button
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: TabButton(), //Top tab button
        ),
        getVerticalSpace(20),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              TicketSearchField(),
              getVerticalSpace(20), //20
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  'Last Visited',
                  style: kBoldText.copyWith(color: kTextGreenColor),
                ),
              ),
              AspectRatio(
                aspectRatio: 1.71,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(0),
                    itemCount: visitList.length,
                    itemBuilder: (context, index) {
                      return HistoryAndSearchCard(
                        cardChild: HistoryAndSearchCardContent(
                          isHistory: true,
                          index: index,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ), //recent visited history are kept in this card
      ],
    );
  }
}
