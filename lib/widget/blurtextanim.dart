import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class BlurTextAnim extends StatefulWidget {
  final String text;
  final double fontsize;
  BlurTextAnim({@required this.text, @required this.fontsize});

  @override
  BlurTextAnimState createState() =>
      BlurTextAnimState(text: text, fontsize: fontsize);
}

class BlurTextAnimState extends State<BlurTextAnim>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  final String text;
  final double fontsize;
  BlurTextAnimState({@required this.text, @required this.fontsize});

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 10.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter:
          ImageFilter.blur(sigmaX: animation.value, sigmaY: animation.value),
      child: Container(
        child: Text(text,
            style: TextStyle(
                fontSize: fontsize,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
