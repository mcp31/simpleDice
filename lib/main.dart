import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'constants.dart';

//We want to keep main.dart not too cluttered
//main.dart, like many other programming languages, is the starting point of your app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: kYellow),
      home: HomePage(),
    );
  }
}
