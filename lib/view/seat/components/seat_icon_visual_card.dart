import 'package:easy_bus/provider/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';

class TapIconToSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showAlertDialog() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Criteria'),
                content: Text('You can\'t book more than 4 seats.'),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('OK'),
                  )
                ],
              ));
    }

    return SizedBox(
      width: getScreeWidth(125),
      height: getScreenHeight(386),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.32,
          mainAxisSpacing: 10,
          crossAxisSpacing: 0,
        ),
        itemCount: 40,
        itemBuilder: (context, index) {
          final provider = Provider.of<HomeTab>(context);
          return GestureDetector(
              key: UniqueKey(),
              child: SvgPicture.asset(
                'assets/icons/available_seat.svg',
                color: provider.seatSelectIndex == index
                    ? kPrimaryColor
                    : kIconColor,
                height: getScreeWidth(24),
                width: getScreeWidth(20),
              ),
              onTap: provider.seatNumber.length > 3
                  ? _showAlertDialog
                  : () {
                      provider.getSeatIndex(index);
                    });
        },
      ),
    );
  }
}
