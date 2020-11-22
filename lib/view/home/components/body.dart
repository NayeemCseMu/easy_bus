import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:provider/provider.dart';
import '../../../components/history_and_search_content.dart';
import '../../../components/history_and_search_card.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/header.dart';
import '../../../model/tab_item.dart';
import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

import 'tab_button.dart';
import 'ticket_search_field_&_button.dart';

enum button { one, round }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeTab>(
      builder: (context, tabItem, child) => Column(
        children: [
          Header(
            headerChild: CustomDropDown(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getVerticalSpace(15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: TabButton(), //Top tab button
                  ),
                  getVerticalSpace(20),

                  //this portion contain TextField and Search Button
                  TicketSearchField(),
                  getVerticalSpace(20), //20
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      'Last Visited',
                      style: kBoldText.copyWith(color: kTextGreenColor),
                    ),
                  ),
                  HistoryAndSearchCard(
                    cardChild: HistoryAndSearchCardContent(
                      busName: 'Ena Transport',
                      busNumber: 'DHK METRO  0001',
                      isHistory: true,
                    ),
                  ),
                ],
              ),
            ),
          ), //recent visited history are kept in this card
        ],
      ),
    );
  }
}
