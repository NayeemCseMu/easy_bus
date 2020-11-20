import 'package:easy_bus/constants.dart';
import 'package:easy_bus/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      primarySwatch: Colors.blue,
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.android: CustomPageTransitionBuilder(),
        TargetPlatform.iOS: CustomPageTransitionBuilder()
      }),
      inputDecorationTheme: inputDecorationTheme());
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(27.5),
    borderSide: BorderSide(color: Colors.white, width: 0.0),
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder.copyWith(
      borderSide: BorderSide(color: kPrimaryColor, width: 0.5),
    ),
  );
}
