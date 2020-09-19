import 'package:easy_bus/components/header_text.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/register/register_screen.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: getScreenHeight(106)),
            HeaderText(
              title: 'Welcome to easybus',
              subtitle: 'More easy to book\nyour bus-trip',
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(height: getScreenHeight(50)),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //this text field is for user name
                  RoundContainer(
                    childWidget: TextField(
                      style: kTextFieldTextStyle,
                      decoration: kInputDecoration.copyWith(
                          hintText: 'username', icon: Icon(Icons.person)),
                    ),
                  ),
                  SizedBox(height: getScreenHeight(20)),
                  //this text field is for user password
                  RoundContainer(
                    childWidget: TextField(
                      style: kTextFieldTextStyle,
                      decoration: kInputDecoration.copyWith(
                          hintText: 'password', icon: Icon(Icons.lock)),
                    ),
                  ),
                  SizedBox(height: getScreenHeight(20)),
                  //this is login button
                  RoundButton(
                      title: 'Log in',
                      color: kPrimaryColor,
                      fontSize: getTextSize(18)),
                  SizedBox(height: getScreenHeight(20)),
                  Text(
                    'forgot password',
                    style: kTextFieldTextStyle.copyWith(
                        fontSize: getTextSize(14),
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(height: getScreenHeight(30)),
                  //this is register button
                  RoundButton(
                    title: 'Register now',
                    color: kRegButtonColor,
                    fontSize: getTextSize(14),
                    press: () {
                      Navigator.pushNamed(
                          context, RegisterScreen.register_screen);
                    },
                  ),
                  SizedBox(height: getScreenHeight(15)),
                  //this is sign in with google button
                  RoundButton(
                      title: 'Continue with google',
                      color: kGoogleButtonColor,
                      fontSize: getTextSize(14)),
                  SizedBox(height: getScreenHeight(15)),
                  //this is sign in with facebook button
                  RoundButton(
                      title: 'Continue with facbook',
                      color: kFacebookButtonColor,
                      fontSize: getTextSize(14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
