import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../size.dart';

class TabItem extends StatelessWidget {
  TabItem(
      {this.title,
      this.icon,
      this.isIcon = false,
      this.press,
      this.isActive = true});
  final String title;
  final String icon;
  final bool isIcon;
  final bool isActive;

  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: getScreenHeight(40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kInActiveColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [kCardBoxShadow]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Row(children: <Widget>[
            SizedBox(width: 10),
            Text(
              title,
              style: kTextFieldTextStyle.copyWith(
                color: isActive ? Colors.white : kTextColor,
              ),
            ),
            SizedBox(width: 10),
            isIcon
                ? Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: SvgPicture.asset(
                      icon,
                      color: isActive ? kPrimaryColor : kInActiveColor,
                    ))
                : SizedBox(),
          ]),
        ),
      ),
    );
  }
}
