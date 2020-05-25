//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class CustomWidgetSignal extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      alignment: Alignment.center,
//      children: [
//        Transform.rotate(
//          angle: 90,
//          child: Container(
//            width: 200,
//            height: 200,
//            transform: Matrix4.skew(0, 0.8),
//            margin: EdgeInsets.all(10),
//            decoration: BoxDecoration(color: Colors.green[500]),
//          ),
//        )
//      ],
//    );
//  }
//}
//
//Container(
//width: (MediaQuery.of(context).size.width) * 0.30,
//height: 10,
//decoration: BoxDecoration(
//color: Colors.green,
//borderRadius: BorderRadius.circular(12)),
//),

//
//
//import 'dart:collection';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//
//class BottomBlock extends StatefulWidget {
//  @override
//  _BottomBlockState createState() => _BottomBlockState();
//}
//
//class _BottomBlockState extends State<BottomBlock>
//    with SingleTickerProviderStateMixin {
//  AnimationController _controller;
//  TextEditingController _textInputController;
//
//  Queue<String> q = new Queue();
//  Queue<String> urls = new Queue();
//  Widget _widget;
//
//  bool audioStarted;
//
//  VideoPlayerController _videoController;
//
//  @override
//  void initState() {
//    _textInputController = new TextEditingController();
//    _controller = AnimationController(
//      vsync: this,
//      duration: Duration(
//        milliseconds: 300,
//      ),
//      lowerBound: 0.0,
//      upperBound: 0.8,
//    )..addListener(() {
//      setState(() {});
//    });
//
//    q.addAll(["B", "C", "E", "A", "F", "G"]);
//    urls.addAll([
//      'assets/audios/1.mp3',
//      'assets/audios/2.mp3',
//      'assets/audios/5.mp3',
//      'assets/audios/3.mp3',
//      'assets/audios/6.mp3',
//      'assets/audios/4.mp3',
//    ]);
//    super.initState();
//
//    _controller.repeat(reverse: true);
//    audioStarted = false;
//    _videoController = VideoPlayerController.asset(urls.first)
//      ..initialize().then((_) {
//        setState(() {});
//      });
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    _controller.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 100,
//      width: MediaQuery.of(context).size.width,
//      decoration: BoxDecoration(
//        border: Border.all(color: Colors.green[400], width: 8),
//        color: Colors.transparent,
//      ),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: [
//          Container(
//            margin: EdgeInsets.only(left: 40, right: 30),
//            child: Text(
//              "Press Key ",
//              style: TextStyle(
//                  fontSize: 35,
//                  color: Colors.green[400].withOpacity(_controller.value),
//                  fontWeight: FontWeight.bold),
//            ),
//          ),
//          Container(
//            child: Text(
//              q.first,
//              style: TextStyle(
//                  fontSize: 45,
//                  color: Colors.red[400].withOpacity(_controller.value),
//                  fontWeight: FontWeight.bold),
//            ),
//          ),
//          Container(
//            width: 100,
//            height: 100,
//            color: Colors.transparent,
//            child: TextField(
//              onChanged: (t) {
//                textChangedCallback(t);
//              },
//              controller: _textInputController,
//              decoration: InputDecoration(
//                hintText: "Text",
//              ),
//              autofocus: true,
//            ),
//          ),
//          Container(
//              child: Visibility(
//                  maintainState: false,
//                  visible: audioStarted,
//                  child: Center(
//                    child: _videoController.value.initialized
//                        ? AspectRatio(
//                      aspectRatio: 1.0,
//                      child: VideoPlayer(_videoController),
//                    )
//                        : Container(),
//                  )))
//        ],
//      ),
//    );
//  }
//
//  void textChangedCallback(String s) {
//    s = s.toUpperCase();
//    if (["B", "C", "E", "A", "F", "G"].contains(s)) {
//      String url;
//      setState(() {
//        q.addLast(q.first);
//        q.removeFirst();
//
//        urls.addLast(urls.first);
//        urls.removeFirst();
//        switch (s) {
//          case "G":
//            {
//              url = urls.elementAt(0);
//            }
//            break;
//          case "A":
//            {
//              url = urls.elementAt(1);
//            }
//            break;
//          case "B":
//            {
//              url = urls.elementAt(2);
//            }
//            break;
//          case "C":
//            {
//              url = urls.elementAt(3);
//            }
//            break;
//          case "D":
//            {
//              url = urls.elementAt(4);
//            }
//            break;
//          case "E":
//            {
//              url = urls.elementAt(5);
//            }
//            break;
//          case "F":
//            {
//              url = urls.elementAt(6);
//            }
//            break;
//        }
//
//        audioStarted = false;
//        _videoController = new VideoPlayerController.asset(url)
//          ..initialize().then((_) {
//            setState(() {});
//          });
//
//        _videoController.play();
//        audioStarted = true;
//
//      });
//    }
//
//    _textInputController.clear();
//  }
//}
