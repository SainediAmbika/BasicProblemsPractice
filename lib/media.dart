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
//           largeScreen: MyWidget(),
//           mediumScreen: MyWidget(),
//           smallScreen: MyWidget(),
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
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth > 1200) {
//           return largeScreen;
//         } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
//           return mediumScreen;
//         } else {
//           return smallScreen;
//         }
//       },
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Your widget content here
//       child: Text('Hello, World!'),
//     );
//   }
// }
