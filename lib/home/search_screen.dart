import 'package:easy_bus/constants.dart';
import 'package:easy_bus/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  static const search_screen = 'search_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
      ),
      title: Text('Find your route'),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ],
    );
  }
}
