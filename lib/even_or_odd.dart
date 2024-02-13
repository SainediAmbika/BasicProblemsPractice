import 'package:flutter/material.dart';

class EvenOrOdd extends StatefulWidget {
  @override
  _EvenOrOddState createState() => _EvenOrOddState();
}

class _EvenOrOddState extends State<EvenOrOdd> {
  final TextEditingController _primecontroller = TextEditingController();
  bool isNumEntered = false;
  bool finalVal = false;
  bool checkEvenOrOdd(int num) {
    if (num % 2 == 0) {
      setState(() {
        finalVal = true;
      });
      return true;
    } else {
      setState(() {
        finalVal = false;
      });
      return false;
    }
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
                    checkEvenOrOdd(enteredval);
                  });
                },
                child: Text("Ok"),
              ),
            ],
          ),
          (isNumEntered == true)
              ? (finalVal == true)
                  ? const Text(
                      "The entered value is Even",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13,
                          color: Color.fromARGB(255, 6, 241, 65)),
                    )
                  : const Text(
                      "The entered value is Odd",
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
