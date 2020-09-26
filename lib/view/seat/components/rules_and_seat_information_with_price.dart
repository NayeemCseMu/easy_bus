import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/view/home/components/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size.dart';

class RulesAndSeatInformationWithPrice extends StatelessWidget {
  const RulesAndSeatInformationWithPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: getScreeWidth(187),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                textAndIcon.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: TextWidget(
                    icon: textAndIcon[index].icon,
                    text: textAndIcon[index].text,
                  ),
                ),
              )
            ],
          ),
        ),
        buildText(text: 'Your Seats'),
        SizedBox(
          width: getScreeWidth(187),
          child: Row(
            children: <Widget>[
              ...List.generate(
                seatSerial.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                      right: kDefaultPadding / 2, top: kDefaultPadding / 2),
                  //here we used TabItem button style for display our selected seat.
                  child: TabItem(
                    title: seatSerial[index],
                    isIcon: false,
                    isActive: true,
                    press: () {},
                  ),
                ),
              )
            ],
          ),
        ),
        buildText(text: 'Class'),
        buildText(text: 'Economy(AC)', color: kTextColor),
        buildText(text: 'Total Cost'),
        buildText(text: '\$160 (4 persons)', color: kTextColor),
      ],
    );
  }

  Padding buildText({String text, Color color = kTextGreenColor}) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 1.5),
      child: Text(
        text,
        style: kBoldText.copyWith(color: color),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String icon, text;

  TextWidget({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10),
        SizedBox(
          width: getScreeWidth(158),
          child: AutoSizeText(
            text,
            maxFontSize: 12,
            maxLines: 2,
            style: kMediumText.copyWith(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
