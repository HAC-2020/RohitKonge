import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApnaKirana'),
        elevation: 10,
        backgroundColor: Colors.blue[200],
      ),
      body: CodeForThis(),
      drawer: DrawerForThis(),
    );
  }
}

class CodeForThis extends StatelessWidget {
  const CodeForThis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Text('asdfasf'),
      ),
    ]);
  }
}

class DrawerForThis extends StatelessWidget {
  const DrawerForThis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Text("asdfasf"),
      ),
    );
  }
}
