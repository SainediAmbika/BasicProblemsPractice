import 'dart:math';

import 'package:flutter/material.dart';

class Prime extends StatefulWidget {
  @override
  _PrimeState createState() => _PrimeState();
}

class _PrimeState extends State<Prime> {
  final TextEditingController _primecontroller = TextEditingController();
  bool isNumEntered = false;
  bool finalVal = false;
  //Logic: a whole number greater than 1 that cannot be exactly divided by any whole number other than itself and 1 (e.g. 2, 3, 5, 7, 11).
  bool checkPrime(int num) {
    if (num <= 1) {
      return false; // 0 and 1 are not prime numbers
    }

    for (int i = 2; i <= sqrt(num); i++) {
      if (num % i == 0) {
        return false; // If the number is divisible by any other number, it's not prime
      }
    }

    return true; // If no divisors are found, the number is prime

    // if ((num % 0 == 0) && (num % num == 0)) {
    //   setState(() {
    //     finalVal = true;
    //   });
    //   return true;
    // } else {
    //   setState(() {
    //     finalVal = false;
    //   });
    //   return false;
    // }
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
                  child: TextField(
                    controller: _primecontroller,
                    decoration: InputDecoration(labelText: 'Enter a number'),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isNumEntered = true;
                    int enteredval = int.tryParse(_primecontroller.text) ?? 0;
                    finalVal = checkPrime(enteredval);
                  });
                },
                child: Text("Ok"),
              ),
            ],
          ),
          (isNumEntered == true)
              ? (finalVal == true)
                  ? const Text(
                      "The entered value is Prime",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13,
                          color: Color.fromARGB(255, 6, 241, 65)),
                    )
                  : const Text(
                      "The entered value is not Prime",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13,
                          color: Colors.red),
                    )
              : const SizedBox(
                  height: 2,
                  width: 2,
                ),
        ],
      ),
    );
  }
}
