

import 'Blocks/BottomBlock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Blocks/Block1.dart';
import 'Blocks/Block2.dart';

import 'Blocks/Block3.dart';
import 'Blocks/Block4.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.3, colors: [Colors.green[900], Colors.black])),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Block1(), Block2()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Block3(),Block4()],
              ),
          BottomBlock()
            ],
          ),
        ));
  }
}
