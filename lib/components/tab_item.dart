import 'package:flutter/material.dart';

class Tab {
  Tab({@required this.title, this.icon});
  final String title;
  final String icon;

  bool checkIcon() {
    return (icon != null) ? true : false;
  }
}

class HomeTab with ChangeNotifier {
  int selectedIndex = 0;
  void getIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Tab> tabList = [
    Tab(title: 'one way', icon: 'assets/icons/one.svg'),
    Tab(title: 'round trip', icon: 'assets/icons/round.svg'),
    Tab(title: 'AC'),
    Tab(title: 'NON-AC')
  ];
}