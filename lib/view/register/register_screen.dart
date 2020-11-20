import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/components/header_text.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: "", trailing: false, color: kTextColor),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: getScreeWidth(335),
            child: Column(
              children: <Widget>[
                getVerticalSpace(147),
                HeaderText(
                  title: 'Welcome to easy bus',
                  subtitle: 'It take one minute to\nbe our member',
                  color: Color(0xFF000000).withOpacity(0.5),
                ),
                getVerticalSpace(47),
                //this text field is for name
                TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'nayeem', prefixIcon: Icon(Icons.person)),
                ),
                getVerticalSpace(20),
                //this text field is for mobile number
                TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: '+8801746255964', prefixIcon: Icon(Icons.call)),
                ),

                getVerticalSpace(20),
                //this text field is for email
                TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'example@gmail.com',
                      prefixIcon: Icon(Icons.mail)),
                ),
                getVerticalSpace(20),
                //this text field is for new password
                TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'password', prefixIcon: Icon(Icons.lock)),
                ),
                getVerticalSpace(20),
                //this text field is for repeat password
                TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'repeat password',
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(height: 20),
                // //this is submitted button
                Button(
                  press: () {},
                  title: 'Confirm',
                  color: kPrimaryColor,
                  fontSize: getTextSize(18),
                ),
                getVerticalSpace(25),
                Text(
                  'I already have an account',
                  style: kTextFieldTextStyle.copyWith(
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
