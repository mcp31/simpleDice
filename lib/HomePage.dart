import 'package:flutter/material.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 34.0,
              ),
              Text(
                "Welcome!",
                style: kTitleTextStyle,
              ),
              Text(
                "LET'S GET ROLLIN'",
                style: kSubTitleTextStyle,
              ),
              SizedBox(
                height: 34.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
