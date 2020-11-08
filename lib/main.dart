import 'package:easy_bus/constants.dart';
import 'package:easy_bus/route.dart';
import 'package:easy_bus/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'model/tab_item.dart';
import 'view/login/login_screen.dart';

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
          scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const String routeName = '/login_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
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
              colors: [kPrimaryColor, kSecondaryColor],
            ),
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
