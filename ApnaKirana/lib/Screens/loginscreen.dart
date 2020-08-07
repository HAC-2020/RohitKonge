import 'package:ApnaKirana/Screens/customeraccountsscreen.dart';
import 'package:flutter/material.dart';

class MyLoginScreen extends StatefulWidget {
  MyLoginScreen({Key key}) : super(key: key);

  @override
  _MyLoginScreenState createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CodeForThis(),
    );
  }
}

class CodeForThis extends StatelessWidget {
  const CodeForThis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 230,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    '   Log into',
                    style: TextStyle(fontSize: 43, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    '   your account',
                    style: TextStyle(fontSize: 43, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 300,
              child: Column(
                children: <Widget>[
                  TextField(),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 74, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.blue,
              onPressed: () {
                print('SendOtp');
                CustomerAccountsScreen();
              },
              child: Text(
                '          SEND OTP          ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.blue,
              onPressed: () => {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/googleicon.png',
                    width: 20,
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
