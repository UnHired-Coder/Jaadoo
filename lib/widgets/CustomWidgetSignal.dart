import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidgetSignal extends StatefulWidget {

  final bool visible ;
  CustomWidgetSignal({this.visible});

  @override
  _CustomWidgetSignalState createState() => _CustomWidgetSignalState();
}

class _CustomWidgetSignalState extends State<CustomWidgetSignal> {
  Queue<Color> q = new Queue();
  Timer timer;
  @override
  void initState() {
    q.addAll([
      Colors.pink[400],
      Colors.red[500],
      Colors.red[400],
      Colors.red[300],
      Colors.red[300],
      Colors.red[500],
      Colors.red[400],
      Colors.red[300],
      Colors.red[300]

    ]);
    startTimer();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Transform.rotate(
          angle: 90,
          child: Container(
            width: 200,
            height: 200,
            transform: Matrix4.skew(0, 0.8),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.green[500]),
          ),
        ),
        Transform.rotate(
          angle: 90,
          child: Visibility(
            visible: widget.visible,
            child: Container(
              width: 160,
              height: 220,
              transform: Matrix4.skew(0, 0.8),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                q.elementAt(0),
                q.elementAt(1),
                q.elementAt(2),
                q.elementAt(3),
              ])),
            ),
          ),
        ),
      ],
    );
  }

  void startTimer() {
    timer = new Timer.periodic(
        Duration(milliseconds: 500),
        (Timer timer) => setState(
              () {
                  q.addFirst(q.last);
                  q.removeLast();
              },
            ));
  }
}
