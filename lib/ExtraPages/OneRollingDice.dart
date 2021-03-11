import 'package:flutter/material.dart';
import 'package:simple_dice/ExtraPages/OneRollingDice.dart';
import '../constants.dart';
import 'dart:math' as math;
import 'dart:math';

class OneRollingDice extends StatefulWidget {
  @override
  _OneRollingDiceState createState() => _OneRollingDiceState();
}

class _OneRollingDiceState extends State<OneRollingDice>
    with SingleTickerProviderStateMixin {
  int diceNumber = 1;

  double diceBottomPadding = 0.0;

  void rollDice() {
    setState(() {
      diceBottomPadding = 100.0;
      diceNumber = Random().nextInt(6) + 1;
    });
  }

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
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 52,
                color: kLightBlue,
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Expanded(
              child: AnimatedContainer(
                padding: EdgeInsets.only(
                    bottom:
                        diceBottomPadding), //Make container have "bouncing effect"
                duration: Duration(milliseconds: 80),
                onEnd: () {
                  setState(() {
                    diceBottomPadding = 0.0; //Brings back to original position
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 118.6,
                      width: 118.6,
                      decoration: BoxDecoration(
                        color: kLightYellow,
                        border: Border.all(
                          color: kLightBlue,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Image.asset(
                            "images/$diceNumber.png", //TODO: Randomize two numbers here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            GestureDetector(
              onTap: () {
                rollDice();
              },
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  color: kDarkBlue,
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                ),
                child: Center(
                  child: Text(
                    "ROLL",
                    style: TextStyle(
                      letterSpacing: 4.8,
                      color: kYellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  color: kDarkBlue,
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                ),
                child: Center(
                  child: Text(
                    "GO BACK",
                    style: TextStyle(
                      letterSpacing: 4.8,
                      color: kYellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
