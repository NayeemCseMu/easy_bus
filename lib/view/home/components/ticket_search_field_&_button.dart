import 'package:easy_bus/components/button.dart';
import 'package:easy_bus/provider/tab_item.dart';
import 'package:easy_bus/view/search/search_ticket.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../../utilis/constants.dart';
import 'package:provider/provider.dart';

import '../../../utilis/size.dart';

class TicketSearchField extends StatefulWidget {
  @override
  _TicketSearchFieldState createState() => _TicketSearchFieldState();
}

class _TicketSearchFieldState extends State<TicketSearchField>
    with SingleTickerProviderStateMixin {
  Animation<double> _fadeAnimation;
  Animation<Offset> _slideAnimation;
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.ease));
    _slideAnimation = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0))
        .animate(
            CurvedAnimation(parent: _animationController, curve: Curves.ease));
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var date;
    var returnDate;

    Future<void> showDate(BuildContext context) async {
      var dateFormat = '';
      DateTime initialDate = DateTime.now();
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2001),
        lastDate: DateTime(2100),
      );
      if (date != null) {
        try {
          dateFormat = DateFormat('yMMMd').format(date).toString();
        } catch (e) {
          print(e.toString());
        }
      }
      return dateFormat;
    }

    return Center(
      child: SizedBox(
        width: getScreeWidth(335),
        child: Consumer<HomeTab>(
          builder: (context, provider, _) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
                decoration: kInputDecoration.copyWith(
                    hintText: 'Sylhet',
                    icon: SvgPicture.asset('assets/icons/train.svg')),
              ),
              getVerticalSpace(10),
              TextField(
                style: kTextFieldTextStyle.copyWith(fontSize: getTextSize(18)),
                decoration: kInputDecoration.copyWith(
                    hintText: 'Dhaka',
                    icon: SvgPicture.asset('assets/icons/location.svg')),
              ),
              getVerticalSpace(10),

              TextField(
                readOnly: true,
                onTap: () {
                  setState(() {
                    date = showDate(context);
                  });
                },
                decoration: kInputDecoration.copyWith(
                    hintText: date ?? 'Journey date',
                    icon: SvgPicture.asset('assets/icons/date.svg')),
              ),
              //here return date field will show/hide while we select either one way or round trip.
              if (provider.itemState == TabItemState.RoundTrip)
                getVerticalSpace(10),
              if (provider.itemState == TabItemState.RoundTrip)
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: TextField(
                        readOnly: true,
                        onTap: () {
                          setState(() {
                            returnDate = showDate(context);
                          });
                        },
                        decoration: kInputDecoration.copyWith(
                            hintText: returnDate ?? 'Return date',
                            icon: SvgPicture.asset('assets/icons/date.svg')),
                      ),
                    ),
                  ),
                ),

              getVerticalSpace(20),
              Button(
                title: 'Search',
                color: kPrimaryColor,
                fontSize: getTextSize(18),
                press: () {
                  Navigator.pushNamed(context, SearchTicket.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
