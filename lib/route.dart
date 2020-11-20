import 'package:easy_bus/main.dart';
import 'view/home/home_screen.dart';
import 'view/login/login_screen.dart';

import 'package:flutter/material.dart';

import 'view/payment/payment_screen.dart';
import 'view/register/register_screen.dart';
import 'view/search/search_ticket.dart';
import 'view/seat/seat_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  SearchTicket.routeName: (context) => SearchTicket(),
  SeatSelect.routeName: (context) => SeatSelect(),
  PaymentScreen.routeName: (context) => PaymentScreen()
};
