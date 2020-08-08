import 'package:ApnaKirana/CustomerAccountsScreen/customeraccountsscreen.dart';
import 'package:ApnaKirana/Screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(IntroScreen());

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MyLoginScreen()),
    );
  }

  // Widget _buildImage(String assetName) {
  //   //assetName = 'icons/icon1.png';
  //   return Align(
  //     child: Image.asset('assets/$assetName', width: 150.0),
  //     alignment: Alignment.bottomCenter,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Online Order's",
          body:
              "Take orders via Whatsapp to reduce Customer's time as well as contact with them",
          image: Align(
            child: Image.asset('assets/images/whatsappimage.png', width: 200.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Customer Accounts",
          body: "Easily track the due's of your customers",
          image: Align(
            child: Image.asset('assets/images/customermoneyimage.png',
                width: 150.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Staff's Information",
          body: "Help's you with your staff's salary and attendance",
          image: Align(
            child: Image.asset('assets/images/staffimage.png', width: 150.0),
            alignment: Alignment.bottomCenter,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
