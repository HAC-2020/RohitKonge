import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 18.0, 18.0, 5),
                                child: Text(
                                  'Rs. 0',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'You will give',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2,
                    height: 40,
                    child: Container(
                      color: Colors.grey[200],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 18.0, 18.0, 5),
                                child: Text(
                                  'Rs. 0',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'You will get',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 1,
                child: Container(
                  color: Colors.grey[200],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'VIEW DETAILS',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: 50,
        child: Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                print('Inkwell');
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextField(),
                  InkWell(
                    onTap: () {
                      print('Inkwell');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                      child: Icon(Icons.filter_list),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Inkwell');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.transparent,
                      child: Icon(Icons.picture_as_pdf),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 7,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                color: Colors.black,
                width: 60,
              ),
              title: Text('Username'),
              subtitle: Text('2 days ago'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rs.100',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Youll Get',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ), // This is the First Tile to Use
            ListTile(
              leading: Container(
                color: Colors.black,
                width: 60,
              ),
              title: Text('Username'),
              subtitle: Text('2 days ago'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rs.100',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Youll Get',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                color: Colors.black,
                width: 60,
              ),
              title: Text('Username'),
              subtitle: Text('2 days ago'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rs.100',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Youll Get',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                color: Colors.black,
                width: 60,
              ),
              title: Text('Username'),
              subtitle: Text('2 days ago'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rs.100',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Youll Get',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                color: Colors.black,
                width: 60,
              ),
              title: Text('Username'),
              subtitle: Text('2 days ago'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Rs.100',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Youll Get',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.grey,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text('Add Book'),
                    color: Colors.purple[200],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Add Customer'),
                    color: Colors.purple[200],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              )),
        ),
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
