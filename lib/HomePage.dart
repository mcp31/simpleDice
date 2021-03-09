import 'package:flutter/material.dart';
import 'package:simple_dice/OneRollingDice.dart';
import 'package:simple_dice/TwoRollingDice.dart';
import 'constants.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dropDownValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  height: 80.4,
                  width: 80.4,
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
                        "images/5.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
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
                height: 52.0,
              ),
              Text(
                "How many dice would you like to roll?",
                style: kQuestionTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 34.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLightYellow,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      width: 4.0,
                      color: kLightBlue,
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton<int>(
                    iconEnabledColor: kLightBlue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    underline: Container(),
                    value: dropDownValue,
                    iconSize: 35,
                    onChanged: (int newValue) {
                      setState(() {
                        dropDownValue = newValue;
                      });

                      if (dropDownValue == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TwoRollingDice(),
                          ),
                        );
                      } else if (dropDownValue == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OneRollingDice(),
                          ),
                        );
                      }
                    },
                    items:
                        <int>[1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 60.0, right: 30.0),
                          child: Text(
                            "$value",
                            style: kDropDownItemTextStyle,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
