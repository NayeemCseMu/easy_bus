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

  @override
  void initState() {
    super.initState();
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
          child: ListView.builder(
            itemCount: searchList.length,
            padding: EdgeInsets.all(0),
            controller: scrollController,
            itemBuilder: (context, index) {
              return HistoryAndSearchCard(
                press: onPressed,
                cardChild: HistoryAndSearchCardContent(
                  index: index,
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
