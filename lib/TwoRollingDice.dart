import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:math' as math;
import 'dart:math';

const kLetsRollTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
  fontSize: 52,
  color: kLightBlue,
);

class TwoRollingDice extends StatefulWidget {
  @override
  _TwoRollingDiceState createState() => _TwoRollingDiceState();
}

class _TwoRollingDiceState extends State<TwoRollingDice>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LET'S ROLL!",
              style: kLetsRollTextStyle,
            ),
            SizedBox(
              height: 160,
            ),
            SizedBox(
              height: 180,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
