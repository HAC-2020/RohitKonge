import 'package:ApnaKirana/Screens/homescreen.dart';
import 'package:ApnaKirana/Screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApnaKirana',
      home: HomeScreen(),
    );
  }
}
