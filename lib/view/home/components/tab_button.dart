import 'package:easy_bus/provider/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

class TabButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeTab>(
      builder: (context, tabItem, _) => Row(
        children: [
          getHorizontalSpace(10),
          ...List.generate(
            tabItem.tabList.length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: TabItem(
                title: tabItem.tabList[index].title,
                icon: tabItem.tabList[index].checkIcon()
                    ? tabItem.tabList[index].icon
                    : null,
                isIcon: tabItem.tabList[index].checkIcon() ? true : false,
                isActive: tabItem.selectedIndex == index ? true : false,
                press: () {
                  tabItem.getIndex(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
            boxShadow: [isActive ? kCardBoxShadow : kBoxShadow]),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 4),
          child: Row(children: <Widget>[
            Text(
              title,
              style: kTextFieldTextStyle.copyWith(
                color: isActive ? Colors.white : kTextColor,
              ),
            ),
            isIcon
                ? Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: SvgPicture.asset(
                      icon,
                      color: isActive ? kPrimaryColor : kInActiveColor,
                    ),
                  )
                : SizedBox(),
          ]),
        ),
      ),
    );
  }
}
