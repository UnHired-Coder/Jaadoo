import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
  final Widget child;
  final int duration;
  final int delay;

  RotateAnimation({this.child, this.duration, this.delay});

  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

const double pi = 3.1415926535897932;

class _RotateAnimationState extends State<RotateAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Timer _timer;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );
    _timer = new Timer(Duration(milliseconds: widget.delay), () {
      _controller.repeat();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: Center(child: widget.child),
    );
  }
}
