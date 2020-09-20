import 'package:easy_bus/components/container_rounded.dart';
import 'package:easy_bus/components/header.dart';
import 'package:easy_bus/components/rounded_button.dart';
import 'package:easy_bus/components/tab_item.dart';
import 'package:easy_bus/constants.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_dropdown.dart';
import 'package:provider/provider.dart';

import 'home_tab_item.dart';

enum button { one, round }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeTab>(
      builder: (context, tabItem, child) => Column(
        children: [
          Header(headerChild: CustomDropDown()),
          SizedBox(height: getScreenHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TabButton(tabItem: tabItem),
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: Provider.of<HomeTab>(context)
                        .tabList[tabItem.selectedIndex]
                        .title ==
                    'one way'
                ? getScreenHeight(285)
                : getScreeWidth(340),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundContainer(
                  childWidget: TextField(
                    style:
                        kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Sylhet',
                        icon: SvgPicture.asset('assets/icons/train.svg')),
                  ),
                ),
                RoundContainer(
                  childWidget: TextField(
                    style:
                        kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Dhaka',
                        icon: SvgPicture.asset('assets/icons/location.svg')),
                  ),
                ),
                RoundContainer(
                  childWidget: TextField(
                    style:
                        kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
                    decoration: kInputDecoration.copyWith(
                        hintText: 'Date',
                        icon: SvgPicture.asset('assets/icons/date.svg')),
                  ),
                ),
                Provider.of<HomeTab>(context)
                            .tabList[tabItem.selectedIndex]
                            .title ==
                        'round trip'
                    ? RoundContainer(
                        childWidget: TextField(
                          style: kTextFieldTextStyle.copyWith(
                              fontSize: getTextSize(18)),
                          decoration: kInputDecoration.copyWith(
                              hintText: 'Date',
                              icon: SvgPicture.asset('assets/icons/date.svg')),
                        ),
                      )
                    : SizedBox(),
                RoundButton(
                  title: 'Search'.toUpperCase(),
                  color: kPrimaryColor,
                  fontSize: getTextSize(18),
                  press: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  TabButton({this.tabItem});
  final HomeTab tabItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          tabItem.tabList.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
    );
  }
}
