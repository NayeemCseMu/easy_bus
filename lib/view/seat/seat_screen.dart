import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/provider/tab_item.dart';
import 'package:easy_bus/utilis/constants.dart';
import 'package:easy_bus/utilis/size.dart';
import 'package:easy_bus/view/seat/components/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeatSelect extends StatelessWidget {
  static const String routeName = '/seat_select';
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Sylhet to Dhaka'),
      body: Body(),
      floatingActionButton: Consumer<HomeTab>(builder: (context, provider, _) {
        if (provider.seatNumber.isEmpty) {
          return SizedBox();
        }
        return FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(Icons.clear, size: 30),
          onPressed: () {
            provider.clearList();
          },
        );
      }),
    );
  }
}
