import 'package:easy_bus/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the EasyBus application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyBuss',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        //textTheme: GoogleFonts.montserrat(textStyle: context)
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
