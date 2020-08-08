import 'package:ApnaKirana/BillingScreen/billingscreen.dart';
import 'package:ApnaKirana/BillingScreen/qrscreen.dart';
import 'package:ApnaKirana/CustomerAccountsScreen/customeraccountsscreen.dart';
import 'package:ApnaKirana/EmployeeScreen/employeesalaryscreen.dart';
import 'package:ApnaKirana/Screens/introscreen.dart';
import 'package:ApnaKirana/Screens/loginscreen.dart';
import 'package:ApnaKirana/Screens/splashscreen.dart';
import 'package:ApnaKirana/EmployeeScreen/employeesalaryscreen.dart';
import 'package:ApnaKirana/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApnaKirana',
      //home: MyBillingScreen(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
