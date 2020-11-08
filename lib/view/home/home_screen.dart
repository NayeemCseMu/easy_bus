import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/view/home/components/body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = '/search_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Find your route'),
      body: Body(),
    );
  }
}
