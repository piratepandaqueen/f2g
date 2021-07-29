import 'package:flutter/material.dart';
import 'current_fucks.dart';

import 'models/custom_icons_icons.dart';
import 'models/fuck.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fucks to Give',
      theme: ThemeData(
        primaryColor: Colors.grey[300],
        accentColor: Colors.pinkAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _userHumanFucks = [
    Fuck(typeOfFuck: 'Human Fuck', title: 'Empathy', cost: 0, returnFucks: 10),
    Fuck(
        typeOfFuck: 'Human Fuck',
        title: 'Compassion',
        cost: 0,
        returnFucks: 10),
  ];

  final List _userStayAliveFucks = [
    Fuck(typeOfFuck: 'Stay Alive Fuck', title: 'Food', cost: 3, returnFucks: 3),
    Fuck(
        typeOfFuck: 'Stay Alive Fuck', title: 'Water', cost: 1, returnFucks: 3),
    Fuck(
        typeOfFuck: 'Stay Alive Fuck', title: 'Sleep', cost: 2, returnFucks: 6),
    Fuck(
        typeOfFuck: 'Stay Alive Fuck',
        title: 'Safety/Security',
        cost: 3,
        returnFucks: 1)
  ];

  final List _userDedicatedFucks = [
    Fuck(typeOfFuck: 'Dedicated Fuck', title: 'Mom', cost: 15, returnFucks: 2),
    Fuck(
        typeOfFuck: 'Dedicated Fuck',
        title: 'Sibs & 507',
        cost: 4,
        returnFucks: 6),
    Fuck(
        typeOfFuck: 'Dedicated Fuck',
        title: 'DevRel',
        cost: 10,
        returnFucks: 6),
    Fuck(typeOfFuck: 'Dedicated Fuck', title: 'Magic', cost: 1, returnFucks: 4),
    Fuck(typeOfFuck: 'Dedicated Fuck', title: 'Sex', cost: 4, returnFucks: 8),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Container(
              child: Text('Current Authentic Status'),
            ),
            flexibleSpace: Container(
              child: Text('sdfdsdf'),
            ),
            bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.pinkAccent, width: 1),
                color: Colors.white,
              ),
              tabs: [
                Tab(
                    icon: Icon(CustomIcons.friends,
                        size: 25, color: Colors.purple[300])),
                Tab(
                  icon: Icon(CustomIcons.middleFinger,
                      size: 25, color: Colors.cyan[300]),
                ),
                Tab(
                    icon: Icon(CustomIcons.diary,
                        size: 25, color: Colors.pink[300])),
              ],
            )),
        body: TabBarView(
          children: [
            // friends view
            Center(child: Text('Yo, how my people doing')),
            // current fucks
            CurrentFucks(
                humanFucks: _userHumanFucks,
                stayAliveFucks: _userStayAliveFucks,
                dedicatedFucks: _userDedicatedFucks),
            Center(child: Text('Transaction Log of posi and neg shit')),
          ],
        ),
      ),
    );
  }
}
