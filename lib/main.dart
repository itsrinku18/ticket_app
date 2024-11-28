import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  // var test = TestClass(x: 4, y: 10);
  // print(test.x);
  // print(test.y);
  // var newTest = test.copyWith(x: 20, y: 40);
  // print(newTest.x);
  // var newTest2 = newTest.copyWith(y: 100);
  // print(newTest2.x);
}

// class TestClass {
//   int x;
//   int y;
//
//   // Named Argument
//   TestClass({
//     required this.x,
//     required this.y,
//   });
//
//   TestClass copyWith({int? x, int? y}) {
//     // return TestClass(x: 5, y: 20); // it print this value
//     // return TestClass(x: x!, y: y!);
//     return TestClass(x: x ?? this.x, y: y ?? this.y);
//   }
//
// // Positional Argument
// // TestClass(
// //   this.x,
// //   this.y,
// // );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
