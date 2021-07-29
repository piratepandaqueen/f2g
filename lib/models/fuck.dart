import 'package:flutter/material.dart';

class Fuck {
  final String typeOfFuck;
  final String title;
  final int cost;
  final int returnFucks;
  final bool fed = false;

  Fuck({
    required this.typeOfFuck,
    required this.title,
    required this.cost,
    required this.returnFucks,
  });

  // Widget build(BuildContext context) {
  //   return Container(
  //       alignment: Alignment.center,
  //       color: color[50],
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             title,
  //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //           ),
  //           Column(
  //             children: [
  //               Text('Cost: ${cost.toString()}'),
  //               Text('Output: ${output.toString()}')
  //             ],
  //           )
  //         ],
  //       ));
  // }
}
