import 'package:flutter/material.dart';

class ResponsiveSize {
  static MediaQueryData _mediaQueryData;
  static double screenHeight;
  static double screenWidth;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getScreenHeight(double inputHeight) {
  return (inputHeight / 812) * ResponsiveSize.screenHeight;
}

double getScreeWidth(double inputWidth) {
  return (inputWidth / 375) * ResponsiveSize.screenWidth;
}
