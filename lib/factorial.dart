import 'package:flutter/material.dart';

class Factorial extends StatefulWidget {
  const Factorial({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FactorialState();
}

class _FactorialState extends State<Factorial> {
//   int? result;
//   bool isClicked = false;
//   int factcal(int n) {
//     if (n == 0 || n == 1) {
//       return 1;
//     } else {
//       return n * factcal(n - 1);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(children: [
//         ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 isClicked = true;
//                 result = factcal(7);
//               });
//             },
//             child: Text(
//               "Caculate Factorial of 7",
//               style: TextStyle(
//                   decoration: TextDecoration.none,
//                   fontSize: 15,
//                   color: Colors.grey),
//             )),
//         if (isClicked == true)
//           SizedBox(
//             width: 100,
//             height: 100,
//             child: Text(
//               "The factorial value of 7  is: $result",
//               style: TextStyle(
//                   decoration: TextDecoration.none,
//                   fontSize: 15,
//                   color: Colors.amberAccent),
//             ),
//           )
//       ]),
//     );
//   }
// }

// took value from user
  int? result;
  final TextEditingController userEnteredVal = TextEditingController();
  bool isClicked = false;

  int factcal(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * factcal(n - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Card(
          child: TextField(
            controller: userEnteredVal,
            decoration:
                InputDecoration(labelText: 'Enter the value for factorial: '),
            keyboardType: TextInputType.number,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isClicked = true;
                int userval = int.tryParse(userEnteredVal.text) ?? 0;
                result = factcal(userval);
              });
            },
            child: Text(
              "Caculate Factorial",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.grey),
            )),
        if (isClicked == true)
          SizedBox(
            width: 100,
            height: 100,
            child: Text(
              "The factorial value is: $result",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.amberAccent),
            ),
          )
      ]),
    );
  }
}
