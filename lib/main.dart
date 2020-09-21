import 'package:easy_bus/constants.dart';
import 'package:easy_bus/home/home_screen.dart';

import 'package:easy_bus/login/login_screen.dart';
import 'package:easy_bus/register/register_screen.dart';
import 'package:easy_bus/search/search_ticket.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'components/tab_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the EasyBus application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTab(),
      child: MaterialApp(
          title: 'EasyBuss',
          theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: SplashScreen(),
          routes: {
            SplashScreen.login_screen: (context) => LoginScreen(),
            RegisterScreen.register_screen: (context) => RegisterScreen(),
            SearchScreen.search_screen: (context) => SearchScreen(),
            SearchTicket.seach_ticket: (context) => SearchTicket(),
          }),
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const login_screen = 'login_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        Navigator.pushNamed(context, SplashScreen.login_screen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [kPrimaryColor, kSecondaryColor]),
          ),
          child: Center(
            child: Text(
              'EasyBus',
              style: GoogleFonts.monofett()
                  .copyWith(color: Colors.white, fontSize: getTextSize(30)),
            ),
          ),
        ),
      ),
    );
  }
}
