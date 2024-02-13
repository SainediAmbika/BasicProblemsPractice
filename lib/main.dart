import 'package:calculatorapp/even_or_odd.dart';
import 'package:calculatorapp/factorial.dart';
import 'package:calculatorapp/login.dart';
import 'package:calculatorapp/max_and_min_num.dart';
import 'package:flutter/material.dart';
import 'package:calculatorapp/prime.dart';
import 'increment_decrement.dart';
import 'mailmessgaes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: Center(
        child: Prime(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Responsive Flutter App'),
//         ),
//         body: ResponsiveLayout(
//           largeScreen: LargeScreenWidget(),
//           mediumScreen: MediumScreenWidget(),
//           smallScreen: SmallScreenWidget(),
//         ),
//       ),
//     );
//   }
// }

// class ResponsiveLayout extends StatelessWidget {
//   final Widget largeScreen;
//   final Widget mediumScreen;
//   final Widget smallScreen;

//   ResponsiveLayout({
//     required this.largeScreen,
//     required this.mediumScreen,
//     required this.smallScreen,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var screenWidth = MediaQuery.of(context).size.width;

//     if (screenWidth > 1200) {
//       return largeScreen;
//     } else if (screenWidth > 800 && screenWidth <= 1200) {
//       return mediumScreen;
//     } else {
//       return smallScreen;
//     }
//   }
// }

// class LargeScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Widget content for large screens
//       child: Text('Large Screen Widget'),
//     );
//   }
// }

// class MediumScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Widget content for medium screens
//       child: Text('Medium Screen Widget'),
//     );
//   }
// }

// class SmallScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Widget content for small screens
//       child: Text('Small Screen Widget'),
//     );
//   }
// }
