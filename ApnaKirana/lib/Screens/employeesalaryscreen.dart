import 'package:flutter/material.dart';

class MyEmployeeSalaryScreen extends StatefulWidget {
  MyEmployeeSalaryScreen({Key key}) : super(key: key);

  @override
  _MyEmployeeSalaryScreenState createState() => _MyEmployeeSalaryScreenState();
}

class _MyEmployeeSalaryScreenState extends State<MyEmployeeSalaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CodeForThis(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Staff'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('Attendance'),
            backgroundColor: Colors.white,
          ),
        ],
      ),
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
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('asdf');
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'User Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 35,
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('TOTAL PENDING'),
                                  Text(
                                    'Rs. 7000',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ],
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'REPORT',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: RaisedButton(
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'ADD STAFF',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  elevation: 10,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
