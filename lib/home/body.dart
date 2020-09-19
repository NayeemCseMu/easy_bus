import 'package:easy_bus/components/header.dart';
import 'package:flutter/material.dart';
import 'custom_dropdown.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(headerChild: CustomDropDown()),
      ],
    );
  }
}
