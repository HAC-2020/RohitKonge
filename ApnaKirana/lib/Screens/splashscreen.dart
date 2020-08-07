import 'package:ApnaKirana/Screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  MySplashScreen({Key key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      image: Image.asset('assets/icons/icon1.png'),
      photoSize: 80,
      navigateAfterSeconds: HomeScreen(),
    );
  }
}
