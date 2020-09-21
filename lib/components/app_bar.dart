import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_bus/constants.dart';

AppBar buildAppBar({String title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
    ),
    title: Text(
      title,
      style: kSemiBoldText.copyWith(color: Colors.white),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    ],
  );
}
