import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr/qr.dart';

class MyQRScreen extends StatefulWidget {
  MyQRScreen({Key key}) : super(key: key);

  @override
  _MyQRScreenState createState() => _MyQRScreenState();
}

class _MyQRScreenState extends State<MyQRScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CodeForThis(),
    );
  }
}

class CodeForThis extends StatefulWidget {
  CodeForThis({Key key}) : super(key: key);

  @override
  _CodeForThisState createState() => _CodeForThisState();
}

class _CodeForThisState extends State<CodeForThis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code for Customer's Bill"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,
              height: 3,
              color: Colors.grey,
            ),
            SizedBox(
              height: 55,
            ),
            QrImage(
              data: 'afsafasfasfsafasfsaf',
              version: QrVersions.auto,
              size: 400,
              gapless: true,
              padding: EdgeInsets.all(15),
              errorStateBuilder: (context, error) {
                return Text(error);
              },
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Scan the QR Code and take a screenshot of the Bill',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 350,
              height: 3,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
