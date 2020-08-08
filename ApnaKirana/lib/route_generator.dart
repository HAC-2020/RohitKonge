import 'package:ApnaKirana/BillingScreen/qrscreen.dart';
import 'package:ApnaKirana/Screens/introscreen.dart';
import 'package:ApnaKirana/Screens/loginscreen.dart';
import 'package:ApnaKirana/Screens/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    final args = setting.arguments;

    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MySplashScreen());
      case '/newroute':
        // if (args is FirebaseUser) {
        //   return MaterialPageRoute(builder: (_) => SampleCode(ourUser: args));
        // }

        return MaterialPageRoute(builder: (_) => MyQRScreen());
    }
  }
}
