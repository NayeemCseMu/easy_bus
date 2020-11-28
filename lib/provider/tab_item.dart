import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum TabItemState { OneWay, RoundTrip }
enum TripStatus { Single, Return }

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
  TabItemState itemState = TabItemState.OneWay;
  TripStatus tripStatus = TripStatus.Single;
  List<String> _seatNumber = [];
  List<String> get seatNumber {
    return [..._seatNumber];
  }

  List<int> _trackIndex = [];
  List<int> get trackIndex {
    return [..._trackIndex];
  }

  List<int> _bookedSeatIndex = [4, 5, 20, 21, 14, 15];
  List<int> get bookedSeatIndex {
    return [..._bookedSeatIndex];
  }

  void getIndex(int index) {
    selectedIndex = index;

    itemState = selectedIndex == 1 ? TabItemState.RoundTrip : null;
    tripStatus = itemState == TabItemState.RoundTrip
        ? TripStatus.Return
        : TripStatus.Single;
    notifyListeners();
  }

  int total = 0;
  List<String> char = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
  int seatIdentifierNumber = 0;
  void getSeatIndex(int index) {
    if (!_bookedSeatIndex.contains(index) && !_trackIndex.contains(index)) {
      seatSelectIndex = index;
      _trackIndex.add(index);
      int charIndex = (index ~/ 4)
          .toInt(); //to efficient conversion from double to int using '~';
      seatIdentifierNumber = findValue(index + 1);
      _seatNumber.add('${char[charIndex]}$seatIdentifierNumber');
      total = _seatNumber.length * 40;
    }
    notifyListeners();
  }

  void clearList() {
    if (_seatNumber.isNotEmpty) _seatNumber.removeLast();
    if (_trackIndex.isNotEmpty) _trackIndex.removeLast();
    if (_seatNumber.isEmpty) seatSelectIndex = -1;

    if (total != 0) total = total - 40;
    notifyListeners();
  }

  int findValue(int number) {
    int finalValue;
    if (number % 2 == 0) {
      if (number % 4 == 0) {
        finalValue = 4;
      } else {
        finalValue = 2;
      }
    } else {
      if (number % 4 == 1) {
        finalValue = 1;
      } else {
        finalValue = 3;
      }
    }
    return finalValue;
  }

  List<Tab> tabList = [
    Tab(title: 'one way', icon: 'assets/icons/one.svg'),
    Tab(title: 'round trip', icon: 'assets/icons/round.svg'),
    Tab(title: 'AC'),
    Tab(title: 'NON-AC')
  ];
}
