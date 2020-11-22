import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/utilis/constants.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/utilis/size.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = '/payment_screen';
  @override
  Widget build(BuildContext context) {
    void _confirmationDialog() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                content: Text('Are you confirm?'),
                actions: [
                  FlatButton(
                    onPressed: null,
                    child: Text('No'),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Text('Yes'),
                  )
                ],
              ));
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Payment'),
      body: Column(
        children: <Widget>[
          Header(
            size: getScreenHeight(428.0),
            headerChild: RoundContainer(
              height: getScreenHeight(320.0),
              editBoxDecoration: false,
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
                        padding: EdgeInsets.only(top: kDefaultPadding / 2),
                        child: RoundContainer(
                          marginValue: 0.0,
                          editBoxDecoration: true,
                          color: Colors.white,
                          childWidget: paymentIcon[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          getVerticalSpace(50),
          Button(
            title: 'Add Account',
            fontSize: getTextSize(18),
            color: kPrimaryColor,
            press: _confirmationDialog,
          )
        ],
      ),
    );
  }
}
