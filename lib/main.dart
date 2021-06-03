import 'package:adimera_app/Check_connectivity.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    };
    MaterialColor colorcustom = MaterialColor(0xffFFA728, color);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adimera',
      theme: ThemeData(
        primarySwatch: colorcustom,
      ),
      home: AnimatedSplashScreen(
          splashIconSize: 180,
          duration: 3000,
          splash: Image.asset("assets/logo.png"),
          nextScreen: Connectivity(),
          splashTransition: SplashTransition.scaleTransition),
    );
  }
}
