import 'package:easy_bus/components/header_text.dart';
import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:easy_bus/view/home/home_screen.dart';
import 'package:easy_bus/view/register/register_screen.dart';
import 'package:flutter/material.dart';

enum ButtonState { Login, Register, Google, Facebook }

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login_screen';
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            getVerticalSpace(106),
            HeaderText(
              title: 'Welcome to easybus',
              subtitle: 'More easy to book\nyour bus-trip',
              color: Color(0xFFC4C4C4),
            ),
            getVerticalSpace(50),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //this text field is for user name
                  SizedBox(
                    width: getScreeWidth(335),
                    child: TextField(
                      style: kTextFieldTextStyle,
                      decoration: kInputDecoration.copyWith(
                        hintText: 'username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  getVerticalSpace(20),
                  //this text field is for user password
                  SizedBox(
                    width: getScreeWidth(335),
                    child: TextField(
                      style: kTextFieldTextStyle,
                      decoration: kInputDecoration.copyWith(
                        hintText: 'password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  getVerticalSpace(20),
                  //this is login button
                  Button(
                    title: 'Log in',
                    color: kPrimaryColor,
                    fontSize: getTextSize(18),
                    press: () {
                      Navigator.pushNamed(context, SearchScreen.routeName);
                    },
                  ),
                  getVerticalSpace(20),
                  Text(
                    'forgot password',
                    style: kMediumText.copyWith(
                        fontSize: getTextSize(16),
                        decoration: TextDecoration.underline),
                  ),
                  getVerticalSpace(30),
                  //this is register button
                  Button(
                    title: 'Register now',
                    color: kRegButtonColor,
                    fontSize: getTextSize(14),
                    press: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                  ),
                  getVerticalSpace(15),
                  //this is sign in with google button
                  ButtonIcon(
                    title: 'Continue with google',
                    icon: 'assets/icons/date.svg',
                    color: kGoogleButtonColor,
                    fontSize: getTextSize(14),
                    press: () {},
                  ),
                  getVerticalSpace(15),
                  //this is sign in with facebook button
                  ButtonIcon(
                    title: 'Continue with facbook',
                    icon: 'assets/icons/date.svg',
                    color: kFacebookButtonColor,
                    fontSize: getTextSize(14),
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
