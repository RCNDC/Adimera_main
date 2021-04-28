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
  void initState() {
    super.initState();
    hideScreen();
  }

  Future<void> hideScreen() async {
    Future.delayed(Duration(milliseconds: 3600), () {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adimera',
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
