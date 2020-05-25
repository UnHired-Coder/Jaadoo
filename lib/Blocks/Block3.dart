import 'dart:ui';

import 'package:PortFolio/Animations/RotateAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Block3 extends StatefulWidget {
  @override
  _Block3State createState() => _Block3State();
}

class _Block3State extends State<Block3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green[400], width: 4),
          color: Colors.transparent,
        ),
        child: Container(
            alignment: Alignment.center,
            width: (MediaQuery.of(context).size.width) * 0.50 - 8,
            height: MediaQuery.of(context).size.height / 2 - 100 + 4,
            child: ClipRect(
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 4, color: Colors.green[300]),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    RotateAnimation(
                      duration: 5000,
                      delay: 500,
                      child: Column(
                        children: [
                          Container(
                            width: 20,
                            height: 200,
                            color: Colors.transparent,
                          ),
                          Container(
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.green,
                              Colors.green.withOpacity(0.6),
                              Colors.green.withOpacity(0.5),
                              Colors.green.withOpacity(0.4),
                              Colors.green.withOpacity(0.3),
                              Colors.green.withOpacity(0.3),
                              Colors.green.withOpacity(0.2),
                              Colors.green.withOpacity(0.1),
                              Colors.green.withOpacity(0.05),
                              Colors.green.withOpacity(0.05),
                            ])),
                          )
                        ],
                      ),
                    ),
                    RotateAnimation(
                      duration: 3000,
                      delay: 0,
                      child: Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: Colors.green[400],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(200, 100)),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    RotateAnimation(
                      duration: 2000,
                      delay: (3000 / 4).round(),
                      child: Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: Colors.green[400],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(200, 100)),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 2, sigmaX: 3),
                      child: Container(),
                    )
                  ],
                ),
              ),
            )));
  }
}
