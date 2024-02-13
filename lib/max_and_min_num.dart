import 'package:flutter/material.dart';
import 'dart:collection';

class MaxMinNum extends StatefulWidget {
  @override
  _MaxMinNumState createState() => _MaxMinNumState();
}

class _MaxMinNumState extends State<MaxMinNum> {
  List<int> numbers = [
    15,
    18,
    96,
    57,
    33,
    66,
    82,
    9,
    423,
    31,
    11,
    85,
    52,
    14,
    74,
    36,
    95
  ];

  late int max;
  late int min;

  @override
  void initState() {
    super.initState();
    // Initialize max and min inside initState
    max = numbers.reduce((value, element) => value > element ? value : element);
    min = numbers.reduce((value, element) => value < element ? value : element);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Card(
                  child: Text("$numbers"),
                ),
              ),
            ],
          ),
          Text(
            "The Maximum number is:  $max",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 13,
                color: Color.fromARGB(255, 6, 241, 65)),
          ),
          Text(
            "The Minimum number is: $min",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 13,
                color: Colors.red),
          )
        ],
      ),
    );
  }
}
