import 'package:ApnaKirana/Screens/customeraccountsscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  //const CodeForThis({Key key}) : super(key: key);

  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser user = (await _auth.signInWithCredential(
      GoogleAuthProvider.getCredential(
        idToken: gSA.idToken,
        accessToken: gSA.accessToken,
      ),
    ))
        .user;

    // user.displayname() => gives the name of user
    return user;
  }

  // Future<FirebaseUser> _otpSignIn(String phone) async {
  //   _auth.verifyPhoneNumber(
  //       phoneNumber: phone,
  //       timeout: Duration(seconds: 120),
  //       verificationCompleted: (AuthCredential credential) async {
  //         AuthResult result = await _auth.signInWithCredential(credential);
  //         FirebaseUser phoneUser = result.user;

  //       },
  //       verificationFailed: (AuthException exception) {
  //         print(exception);
  //       },
  //       // codeSent: (String verification, [int forceResendingToken]) {
  //       //   showDialog(
  //       //       context: ,
  //       //       barrierDismissible: false,
  //       //       builder: (context) {});
  //       // },
  //       codeAutoRetrievalTimeout: null);
  // }

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
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _codeController,
                    decoration: InputDecoration(
                      hintText: 'OTP',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 74, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.blue,
              onPressed: () {
                //add code for proper number
                // _otpSignIn(_phoneController.text.trim());
                print('SendOtp');
                //CustomerAccountsScreen();
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        height: 2,
                        width: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 20),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        height: 2,
                        width: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.blue,
              onPressed: () => {
                _signIn().catchError((e) {
                  print(e);
                })
              },
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
