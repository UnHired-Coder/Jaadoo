import 'dart:async';
import 'dart:ui';
import 'package:PortFolio/widgets/CustomWidgetSignal.dart';
import 'package:flutter/material.dart';

class Block2 extends StatefulWidget {
  @override
  _Block2State createState() => _Block2State();
}

class _Block2State extends State<Block2> {
  Timer timer;
  String label;

  @override
  void initState() {
    // TODO: implement initState
    label = "Seeding ..";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green[400], width: 4),
        color: Colors.transparent,
      ),
      child: ClipRect(
        child: Stack(
          children: [
            Container(
              width: (MediaQuery.of(context).size.width) * 0.50 - 8,
              height: MediaQuery.of(context).size.height / 2 - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    width: 200,
                    child: Text(
                      label,
                      style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: ClipRect(
                      child: Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: CustomWidgetSignal(
                                    visible: false,
                                  ),
                                ),
                                BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaY: 7, sigmaX: 3),
                                    child: Container())
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startTimer() {
    timer = new Timer.periodic(
        Duration(milliseconds: 1000),
        (Timer timer) => setState(
              () {},
            ));
  }
}
