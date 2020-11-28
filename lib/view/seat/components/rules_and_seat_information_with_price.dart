import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/provider/tab_item.dart';
import 'package:easy_bus/view/home/components/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Consumer<HomeTab>(
              builder: (context, seatNo, _) => seatNo.seatNumber.length == 0
                  ? SizedBox()
                  : Row(
                      children: <Widget>[
                        ...List.generate(
                          seatNo.seatNumber.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(
                                right: kDefaultPadding / 2,
                                top: kDefaultPadding / 2),
                            //here we used TabItem button style for display our selected seat.
                            child: SeatNumberCard(
                                seatNoText: seatNo.seatNumber[index]),
                          ),
                        )
                      ],
                    ),
            ),
          ),
        ),
        buildText(text: 'Class'),
        buildText(text: 'Economy(AC)', color: kTextColor),
        buildText(text: 'Total Cost'),
        Consumer<HomeTab>(
          builder: (context, provider, _) => buildText(
              text:
                  '\$${provider.total} (${provider.seatNumber.length} persons)',
              color: kTextColor),
        ),
      ],
    );
  }

  Padding buildText({String text, Color color = kTextGreenColor}) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding / 1.5),
      child: Text(
        text,
        style: kBoldText.copyWith(color: color),
      ),
    );
  }
}

class SeatNumberCard extends StatelessWidget {
  final String seatNoText;
  const SeatNumberCard({
    Key key,
    this.seatNoText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(40),
      width: getScreenHeight(40),
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        seatNoText,
        style: kTextFieldTextStyle.copyWith(color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 10,
                color: kPrimaryColor.withOpacity(0.3))
          ]),
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
