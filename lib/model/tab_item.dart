import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  int seatSelectIndex = -1;

  void getIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void getSeatIndex(int index) {
    seatSelectIndex = index;
    notifyListeners();
  }

  List<Tab> tabList = [
    Tab(title: 'one way', icon: 'assets/icons/one.svg'),
    Tab(title: 'round trip', icon: 'assets/icons/round.svg'),
    Tab(title: 'AC'),
    Tab(title: 'NON-AC')
  ];

  var dateFormat;
  void showDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2001),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      try {
        dateFormat = DateFormat('yMMMd').format(date);
      } catch (e) {
        print(e.toString());
      }
    }

    notifyListeners();
  }
}
