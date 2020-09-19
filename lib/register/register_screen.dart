import 'package:easy_bus/components/header_text.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/components/text_field_with_container.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      body: SizedBox(
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
            TextFieldContainer(
              hint: 'nayeem',
              icon: Icon(Icons.person),
            ),
            SizedBox(height: 20),
            TextFieldContainer(
              hint: '+8801746255964',
              icon: Icon(Icons.call),
            ),
            SizedBox(height: 20),
            TextFieldContainer(
              hint: 'islamrnayeem@gmail.com',
              icon: Icon(Icons.mail),
            ),
            SizedBox(height: 20),
            TextFieldContainer(
              hint: 'showpassword',
              icon: Icon(Icons.lock),
            ),
            SizedBox(height: 20),
            TextFieldContainer(
              hint: '*******',
              icon: Icon(Icons.lock),
            ),
            SizedBox(height: 20),
            RoundButton(
              title: 'Confirm',
              color: kPrimaryColor,
              fontSize: getTextSize(18),
            ),
          ],
        ),
      ),
    );
  }
}
