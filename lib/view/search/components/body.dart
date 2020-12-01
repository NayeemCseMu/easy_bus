import 'package:flutter/material.dart';
import '../../../components/history_and_search_content.dart';
import '../../../components/headerwidgetcard.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/history_and_search_card.dart';
import '../../../components/header.dart';
import '../../../model/bus_search_result.dart';
import '../../../utilis/constants.dart';
import '../../../utilis/size.dart';
import '../../seat/seat_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final scrollController = ScrollController();
  bool closeDropDown = false;
  final _listKey = GlobalKey<AnimatedListState>();
  List<SearchResult> _item = [];

  @override
  void initState() {
    super.initState();

    searchList.forEach((item) {
      Future.delayed(Duration(milliseconds: 100), () {
        _item.add(item);
        _listKey.currentState.insertItem(_item.length - 1);
      });
    });

    scrollController.addListener(() {
      setState(() {
        closeDropDown = scrollController.offset > 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.pushNamed(context, SeatSelect.routeName);
    }

    return Column(
      children: <Widget>[
        Header(headerChild: DateAndResultCard()),
        getVerticalSpace(15),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: closeDropDown ? 0 : getScreenHeight(55),
          child: CustomDropDown(),
        ),
        Expanded(
          child: AnimatedList(
            key: _listKey,
            initialItemCount: searchList.length,
            padding: EdgeInsets.all(0),
            controller: scrollController,
            itemBuilder: (context, index, animation) {
              return SlideTransition(
                position: Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                    .animate(animation),
                child: HistoryAndSearchCard(
                  press: onPressed,
                  cardChild: HistoryAndSearchCardContent(
                    index: index,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class DateAndResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreeWidth(335),
      child: Row(
        children: [
          buildExpanded(title: 'Dec 3, 2020', color: kGoogleButtonColor),
          SizedBox(width: kDefaultPadding),
          buildExpanded(
              title: '${searchList.length} results found',
              color: kTextGreenColor),
        ],
      ),
    );
  }

  Expanded buildExpanded({String title, Color color, double flexSize}) {
    return Expanded(
      child: HeaderWidgetCard(
        childWidget: Text(
          title,
          style: kMediumText.copyWith(color: color),
        ),
      ),
    );
  }
}
