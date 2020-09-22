import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/seat/components/body.dart';
import 'package:flutter/material.dart';

import '../size.dart';

class SeatSelect extends StatelessWidget {
  static const seat_select = "seat_select";
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Sylhet to Dhaka'),
      body: Body(),
    );
  }
}
