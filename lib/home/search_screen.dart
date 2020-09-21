import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/home/components/body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const search_screen = 'search_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Find your route'),
      body: Body(),
    );
  }
}
