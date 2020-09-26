import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreen extends StatelessWidget {
  static const payment_screen = 'payment_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Payment'),
      body: Column(
        children: <Widget>[
          Header(
            size: getScreenHeight(428.0),
            headerChild: RoundContainer(
              height: getScreenHeight(315.0),
              editBoxDecoration: true,
              color: Colors.white,
              marginValue: kDefaultPadding,
              childWidget: SizedBox(
                width: getScreeWidth(295),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List.generate(
                      paymentIcon.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2),
                        child: RoundContainer(
                          marginValue: 0.0,
                          editBoxDecoration: true,
                          color: Colors.white,
                          childWidget: SvgPicture.asset(
                            paymentIcon[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: getScreenHeight(50.0)),
          RoundButton(
            title: 'Add Account',
            fontSize: getTextSize(18),
            color: kPrimaryColor,
            press: () {},
          )
        ],
      ),
    );
  }
}
