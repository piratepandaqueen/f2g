import 'package:flutter/material.dart';

class CurrentFucks extends StatelessWidget {
  final List humanFucks;
  final List stayAliveFucks;
  final List dedicatedFucks;

  CurrentFucks(
      {required this.humanFucks,
      required this.stayAliveFucks,
      required this.dedicatedFucks});

  int sumCost(listToSum) {
    List costList = [];
    for (var i = 0; i < listToSum.length; i++) {
      costList.add(listToSum[i].cost);
    }
    var sumFucksCost = costList.reduce((value, element) => value + element);
    return sumFucksCost;
  }

  int sumReturn(listToSum) {
    List returnList = [];
    for (var i = 0; i < listToSum.length; i++) {
      returnList.add(listToSum[i].returnFucks);
    }
    var sumFucksReturn = returnList.reduce((value, element) => value + element);
    return sumFucksReturn;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // SliverPadding(padding: EdgeInsets.all(10), ),
        SliverAppBar(
            pinned: true,
            expandedHeight: 100.0,
            backgroundColor: Colors.grey[100],
            title: Container(
              child: Column(
                children: [
                  Text(
                    'Fucks to Give Today',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text('Starting Fucks: 50'),
                ],
              ),
            ),
            actions: []),
        SliverAppBar(
          pinned: true,
          expandedHeight: 70,
          backgroundColor: Colors.purple[900],
          title: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Human Fucks',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(
                  'Total Cost: ${sumCost(humanFucks).toString()} | Total Return: ${sumReturn(humanFucks).toString()}',
                  style: TextStyle(color: Colors.white, fontSize: 14))
            ]),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  color: Colors.purple[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        humanFucks[index].title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Text('Cost: ${humanFucks[index].cost.toString()}'),
                          Text(
                              'Return: ${humanFucks[index].returnFucks.toString()}')
                        ],
                      )
                    ],
                  ));
            },
            childCount: humanFucks.length,
          ),
        ),
        SliverAppBar(
          pinned: true,
          expandedHeight: 70,
          backgroundColor: Colors.pink[800],
          title: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Stay Alive Fucks',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(
                  'Total Cost: ${sumCost(stayAliveFucks).toString()} | Total Return: ${sumReturn(stayAliveFucks).toString()}',
                  style: TextStyle(color: Colors.white, fontSize: 14))
            ]),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  color: Colors.pink[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(stayAliveFucks[index].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Column(
                        children: [
                          Text(
                              'Cost: ${stayAliveFucks[index].cost.toString()}'),
                          Text(
                              'Return: ${stayAliveFucks[index].returnFucks.toString()}')
                        ],
                      )
                    ],
                  ));
            },
            childCount: stayAliveFucks.length,
          ),
        ),
        SliverAppBar(
          pinned: true,
          expandedHeight: 70,
          backgroundColor: Colors.cyan[800],
          title: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Dedicated Fucks',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(
                  'Total Cost: ${sumCost(dedicatedFucks).toString()} | Total Return: ${sumReturn(dedicatedFucks).toString()}',
                  style: TextStyle(color: Colors.white, fontSize: 14))
            ]),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dedicatedFucks[index].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Column(
                        children: [
                          Text(
                              'Cost: ${dedicatedFucks[index].cost.toString()}'),
                          Text(
                              'Return: ${dedicatedFucks[index].returnFucks.toString()}')
                        ],
                      )
                    ],
                  ));
            },
            childCount: dedicatedFucks.length,
          ),
        ),
      ],
    );
  }
}
