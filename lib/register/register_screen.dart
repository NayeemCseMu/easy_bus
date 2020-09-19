import 'package:easy_bus/components/header_text.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const register_screen = 'register_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: getScreenHeight(124)),
              HeaderText(
                title: 'Welcome to easy bus',
                subtitle: 'It take one minute to\nbe our member',
                color: Color(0xFF000000).withOpacity(0.5),
              ),
              SizedBox(height: 47),
              RoundContainer(
                childWidget: TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'nayeem', icon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 20),
              RoundContainer(
                childWidget: TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: '+8801746255964', icon: Icon(Icons.call)),
                ),
              ),
              SizedBox(height: 20),
              RoundContainer(
                childWidget: TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'example@gmail.com', icon: Icon(Icons.mail)),
                ),
              ),
              SizedBox(height: 20),
              RoundContainer(
                childWidget: TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'password', icon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(height: 20),
              RoundContainer(
                childWidget: TextField(
                  style: kTextFieldTextStyle,
                  decoration: kInputDecoration.copyWith(
                      hintText: 'repeat password', icon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(height: 20),
              RoundButton(
                title: 'Confirm',
                color: kPrimaryColor,
                fontSize: getTextSize(18),
              ),
              SizedBox(height: getScreenHeight(25)),
              Text(
                'I already have an account',
                style: kTextFieldTextStyle.copyWith(
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
