import 'package:easy_bus/model/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

class SeatIconVisualForSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreeWidth(125),
      height: getScreenHeight(386),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 10,
          childAspectRatio: 1.32,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemCount: 40,
        itemBuilder: (context, index) {
          final provider = Provider.of<HomeTab>(context);
          return GestureDetector(
              child: SvgPicture.asset(
                'assets/icons/available_seat.svg',
                color: provider.seatSelectIndex == index
                    ? kPrimaryColor
                    : kIconColor,
                height: getScreeWidth(24),
                width: getScreeWidth(20),
              ),
              onTap: () {
                provider.getSeatIndex(index);
              });
        },
      ),
    );
  }
}
