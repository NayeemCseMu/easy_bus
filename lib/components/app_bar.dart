import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_bus/constants.dart';

AppBar buildAppBar(
    {String title, Color color = Colors.white, bool trailing = true}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/back_arrow.svg', color: color),
    ),
    title: Text(
      title,
      style: kBoldText.copyWith(
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child:
            trailing ? SvgPicture.asset('assets/icons/menu.svg') : SizedBox(),
      ),
    ],
  );
}
