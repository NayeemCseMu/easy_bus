import 'package:flutter/material.dart';
import 'size.dart';

const kPrimaryColor = Color(0xFF00AEFF);
const kSecondaryColor = Color(0xFF0673FD);
const kBackgroundColor = Color(0xFFE5E5E5);

const kTextColor = Color(0xFF444655);
const kTextGreenColor = Color(0xFF22C197);
const kTextWhiteColor = Color(0xFFFFFFFF);
const kTextLightColor = Color(0xFF000000);
const kTextGreyColor = Color(0xFFC4C4C4);

const kRegButtonColor = Color(0xFFF27FB5);
const kGoogleButtonColor = Color(0xFFDD4B39);
const kFacebookButtonColor = Color(0xFF3B5999);

const kIconColor = Color(0xFFE33B00);
const kTrainIconColor = Color(0xFFEE1952);

const kDefaultPadding = 20.0;

const kBoxShadow = BoxShadow(
    offset: Offset(0, 8),
    blurRadius: 15,
    color: Color.fromRGBO(32, 32, 35, 0.02));

final kBoxDecoration = BoxDecoration(
    color: kTextWhiteColor.withOpacity(0.7),
    borderRadius: BorderRadius.circular(getScreenHeight(27.5)),
    boxShadow: [kBoxShadow]);

const kInputDecoration =
    InputDecoration(border: InputBorder.none, hintText: '');
