import 'package:flutter/material.dart';
import '../utilis/constants.dart';
import '../view/seat/components/rules_and_seat_information_with_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeatIcon {
  final String icon;
  final String title;
  final Color color;

  SeatIcon({this.icon, this.title, this.color});
}

//seat icon and text information
List<SeatIcon> seatList = [
  SeatIcon(
      icon: 'assets/icons/available_seat.svg',
      title: 'Available\nSeats',
      color: kIconColor),
  SeatIcon(
      icon: 'assets/icons/available_seat.svg',
      title: 'Booked\nSeats',
      color: Colors.white),
  SeatIcon(
      icon: 'assets/icons/available_seat.svg',
      title: 'Selected\nSeats',
      color: kPrimaryColor),
];

//this is rules icon and text of seat selection screen
List<TextWidget> textAndIcon = [
  TextWidget(
    icon: 'assets/icons/red_error.svg',
    text: 'You can’t book more then 4 seats at a time.',
  ),
  TextWidget(
    icon: 'assets/icons/red_error.svg',
    text: 'Digital payemnet available.',
  ),
  TextWidget(
    icon: 'assets/icons/red_error.svg',
    text: 'We will return 60% cash for cancel the trip.',
  ),
];

//payment method icons
List<SvgPicture> paymentIcon = [
  SvgPicture.asset('assets/icons/visa.svg'),
  SvgPicture.asset('assets/icons/visa.svg'),
  SvgPicture.asset('assets/icons/visa.svg'),
  SvgPicture.asset('assets/icons/visa.svg'),
];
