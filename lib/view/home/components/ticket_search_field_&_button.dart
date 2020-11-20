import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/model/tab_item.dart';
import 'package:easy_bus/view/search/search_ticket.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'package:provider/provider.dart';

import '../../../size.dart';

class TicketSearchField extends StatelessWidget {
  const TicketSearchField({
    Key key,
  }) : super(key: key);

  //here left lot's of thing to make efficinetly so that code can be more readable

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeTab>(context);

    return Center(
      child: SizedBox(
        width: getScreeWidth(335),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
              decoration: kInputDecoration.copyWith(
                  hintText: 'Sylhet',
                  icon: SvgPicture.asset('assets/icons/train.svg')),
            ),
            getVerticalSpace(10),
            TextField(
              style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
              decoration: kInputDecoration.copyWith(
                  hintText: 'Dhaka',
                  icon: SvgPicture.asset('assets/icons/location.svg')),
            ),
            getVerticalSpace(10),
            TextField(
              readOnly: true,
              onTap: () {
                provider.showDate(context);
              },
              decoration: kInputDecoration.copyWith(
                  hintText: 'Journey date',
                  icon: SvgPicture.asset('assets/icons/date.svg')),
            ),
            //here return date field will show/hide while we select either one way or round trip.
            if (provider.itemState == TabItemState.RoundTrip)
              getVerticalSpace(10),
            if (provider.itemState == TabItemState.RoundTrip)
              TextField(
                readOnly: true,
                onTap: () {
                  provider.showDate(context);
                },
                decoration: kInputDecoration.copyWith(
                    hintText: 'Return date',
                    icon: SvgPicture.asset('assets/icons/date.svg')),
              ),

            getVerticalSpace(20),
            Button(
              title: 'Search',
              color: kPrimaryColor,
              fontSize: getTextSize(18),
              press: () {
                Navigator.pushNamed(context, SearchTicket.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
