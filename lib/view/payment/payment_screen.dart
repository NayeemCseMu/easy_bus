import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/components/headerwidgetcard.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/utilis/constants.dart';
import 'package:easy_bus/model/list_of_icon_and_text.dart';
import 'package:easy_bus/utilis/size.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = '/payment_screen';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
    with SingleTickerProviderStateMixin {
  bool showBalance = false;
  double _showOpacity = 0.0;
  double _hideOpacity = 1.0;

  void hideBalance() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        showBalance = false;
        _hideOpacity = 1;
        _showOpacity = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
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
          Expanded(
            child: Header(
              headerChild: HeaderWidgetCard(
                height: getScreenHeight(400.0),
                childWidget: SizedBox(
                  width: getScreeWidth(295),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                buildAnimatedOpacity(opacity: _showOpacity),
                                buildAnimatedOpacity(opacity: _hideOpacity),
                              ],
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 500),
                            bottom: 0,
                            top: 0,
                            left: showBalance ? 140 : 10,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showBalance = true;
                                  _showOpacity = 1;
                                  _hideOpacity = 0;
                                });
                                hideBalance();
                              },
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...List.generate(
                        paymentIcon.length,
                        (index) => Container(
                          padding: EdgeInsets.only(top: kDefaultPadding / 2),
                          decoration:
                              BoxDecoration(boxShadow: [kCardBoxShadow]),
                          child: HeaderWidgetCard(
                            childWidget: paymentIcon[index],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          getVerticalSpace(30),
          Button(
            title: 'Add Account',
            fontSize: getTextSize(18),
            color: kPrimaryColor,
            press: _confirmationDialog,
          ),
        ],
      ),
    );
  }

  AnimatedOpacity buildAnimatedOpacity({double opacity, String text}) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: opacity,
      child: Text(
        showBalance ? '\$5000' : 'Tap for Balance',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
