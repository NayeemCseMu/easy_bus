import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CustomDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in busList) {
      final menuItem = DropdownMenuItem(value: item, child: Text(item));

      menuItems.add(menuItem);
    }

    return Container(
      alignment: Alignment.center,
      width: getScreeWidth(335),
      height: getScreenHeight(55),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: kBoxDecoration
          .copyWith(color: Colors.white, boxShadow: [kCardBoxShadow]),
      child: DropdownButton<String>(
        icon: SvgPicture.asset('assets/icons/arrow_icon.svg'),
        iconSize: 35,
        hint: Text('Select your bus'),
        underline: SizedBox(),
        isExpanded: true,
        onChanged: (value) {
          print(value);
        },
        items: menuItems,
      ),
    );
  }
}
