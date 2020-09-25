import 'package:easy_bus/components/common_card_content.dart';
import 'package:easy_bus/components/common_description_card.dart';
import 'package:easy_bus/components/custom_dropdown.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/model/tab_item.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tab_button.dart';
import 'ticket_search_field_&_button.dart';

enum button { one, round }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeTab>(
      builder: (context, tabItem, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              headerChild: CustomDropDown(),
            ),
            SizedBox(height: getScreenHeight(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabButton(tabItem: tabItem), //Top tab button
            ),
            SizedBox(height: kDefaultPadding),

            //this portion contain TextField and Search Button
            TicketSearchField(),
            SizedBox(height: kDefaultPadding), //20
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                'Last Visited',
                style: kBoldText.copyWith(color: kTextGreenColor),
              ),
            ),
            CommonDescriptionCard(
              cardChild: CommonCardContent(
                busName: 'Ena',
                busNumber: '2222',
              ),
            ) //recent visited history are kept in this card
          ],
        ),
      ),
    );
  }
}