import 'package:easy_bus/components/app_bar.dart';
import 'package:easy_bus/view/search/components/body.dart';
import 'package:flutter/material.dart';

class SearchTicket extends StatelessWidget {
  static const seach_ticket = "search_ticket";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title: 'Sylhet to Dhaka'),
      body: Body(),
    );
  }
}
