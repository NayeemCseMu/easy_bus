import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/components/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../size.dart';
import 'package:provider/provider.dart';

class TicketSearchField extends StatelessWidget {
  const TicketSearchField({
    Key key,
  }) : super(key: key);

  //here left lot's of thing to make efficinetly so that code can be more readable

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeTab>(context);
    final selectedIndexButton = provider.tabList[provider.selectedIndex].title;
    return SizedBox(
      width: double.infinity,
      //here height will be vary with our selected button.
      height: selectedIndexButton == 'one way'
          ? getScreenHeight(285)
          : getScreeWidth(340),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundContainer(
            childWidget: TextField(
              style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
              decoration: kInputDecoration.copyWith(
                  hintText: 'Sylhet',
                  icon: SvgPicture.asset('assets/icons/train.svg')),
            ),
          ),
          RoundContainer(
            childWidget: TextField(
              style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
              decoration: kInputDecoration.copyWith(
                  hintText: 'Dhaka',
                  icon: SvgPicture.asset('assets/icons/location.svg')),
            ),
          ),
          RoundContainer(
              childWidget: TextField(
            readOnly: true,
            onTap: () {
              provider.showDate(context);
            },
            decoration: kInputDecoration.copyWith(
                hintText: 'Journey date',
                icon: SvgPicture.asset('assets/icons/date.svg')),
          )),
          //here return date field will show/hide while we select either one way or round trip.
          selectedIndexButton == 'round trip'
              ? RoundContainer(
                  childWidget: TextField(
                  readOnly: true,
                  onTap: () {
                    provider.showDate(context);
                  },
                  decoration: kInputDecoration.copyWith(
                      hintText: 'Return date',
                      icon: SvgPicture.asset('assets/icons/date.svg')),
                ))
              : SizedBox(),
          RoundButton(
            title: 'Search'.toUpperCase(),
            color: kPrimaryColor,
            fontSize: getTextSize(18),
            press: () {},
          )
        ],
      ),
    );
  }
}
