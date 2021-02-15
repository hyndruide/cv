import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class NumAnim extends StatefulWidget {
  final double numb;
  final double fontsize;
  NumAnim({@required this.numb, @required this.fontsize});

  @override
  NumAnimState createState() => NumAnimState(numb: numb, fontsize: fontsize);
}

class NumAnimState extends State<NumAnim> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  final double numb;
  final double fontsize;
  NumAnimState({@required this.numb, @required this.fontsize});

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0, end: numb).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(animation.value.toInt().toString(),
          style: TextStyle(
              fontSize: fontsize,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
