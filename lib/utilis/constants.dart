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

const kInActiveColor = Color(0xFFEBEEFF);

final kDefaultPadding = getScreeWidth(20.0);

const kBoxShadow = BoxShadow(
  offset: Offset(0, 8),
  blurRadius: 15,
  color: Color.fromRGBO(32, 32, 35, 0.02),
);

const kCardBoxShadow = BoxShadow(
  offset: Offset(0, 8),
  blurRadius: 15,
  color: Color.fromRGBO(32, 32, 35, 0.07),
);

const kTextShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Color.fromRGBO(0, 0, 0, 0.25),
);

final kBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(getScreenHeight(27.5)),
  boxShadow: [kBoxShadow],
);

//Bold text
final kBoldText = TextStyle(
  color: kTextColor,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontFamily: 'Montserrat',
  fontSize: 20,
);
//SemiBold text
final kSemiBoldText = TextStyle(
  color: kTextColor,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontFamily: 'Montserrat',
  fontSize: 18,
);
//Medium text
final kMediumText = TextStyle(
  color: kTextColor,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  fontFamily: 'Montserrat',
  fontSize: 16,
);

//for textfield text style
final kTextFieldTextStyle = TextStyle(
  color: Color(0xFF444655),
  fontSize: getTextSize(16),
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w500,
);

final kInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  hintStyle: TextStyle(fontSize: getTextSize(16)),
);

//All bus-name list
List<String> busList = [
  'Ena Transport',
  'Hanif Transport',
  'Shyamoli Transport'
];
