import 'package:flutter/material.dart';

class IncNDec extends StatefulWidget {
  IncNDec({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IncNDecState();
}

class _IncNDecState extends State<IncNDec> {
  int num = 0;
  bool decValLimitReached = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: Column(
        children: [
          Center(
            child: Text(
              "Value: $num",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.purpleAccent),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton( icon: Icon(Icons.add),onPressed:(){},),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                child: const Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int? tempnum;
                    if (num != 0) {
                      num--;
                      tempnum = num;
                    }
                    if (tempnum == 0) {
                      setState(() {
                        decValLimitReached = true;
                      });
                    }
                  });
                },
                child: const Text("Decrement"),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          if (decValLimitReached == true)
            const Text(
              "Please Click on increment",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  color: Colors.red),
            ),
        ],
      ),
    );
  }
}
