import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Block4 extends StatefulWidget {
  @override
  _Block4State createState() => _Block4State();
}

class _Block4State extends State<Block4> {
  Random rnd = new Random();
  int r, max, min;
  double randomValue;
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    max = 99999;
    min = 10000;
    r = min + rnd.nextInt(max - min);
    randomValue = r.toDouble();
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green[400], width: 4),
        color: Colors.transparent,
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width) * 0.50 - 8,
        height: MediaQuery.of(context).size.height / 2 - 100 + 4,
        child: ClipRect(
          child: Container(
              child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Progress : " +
                                  (((randomValue % 50) + 50))
                                      .toStringAsFixed(3),
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Frequency Rx    : " +
                                  randomValue.toStringAsFixed(6),
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Frequency Tx    : " +
                                  (randomValue * 0.954628).toStringAsFixed(6),
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(right: 30,top: 150),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "A : 0001 ",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "B : 0010 ",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "C : 0011 ",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "D : 0011 ",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "E : 0011 ",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                child: Container(),
              )
            ],
          )),
        ),
      ),
    );
  }

  void startTimer() {

    timer = new Timer.periodic(
        Duration(milliseconds: 100),
        (Timer timer) => setState(
              () {
                randomValue = min + rnd.nextInt(max - min) * 0.9768698;
              },
            ));
  }
}
