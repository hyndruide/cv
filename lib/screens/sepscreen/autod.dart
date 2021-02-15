import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class AutoPage extends StatefulWidget {
  @override
  _AutoPageState createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _controller.repeat(
        min: 0.0, max: 1.0, reverse: false, period: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final String assetName1 = 'assets/images/autopile.svg';
    final String assetName2 = 'assets/images/autorot.svg';
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 50.0),
              child: SizedBox(
                width: 200.0,
                height: 150.0,
                child: SvgPicture.asset(
                  assetName1,
                  semanticsLabel: 'Fleche',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 300.0,
              child: RotationTransition(
                turns: _controller,
                child: SvgPicture.asset(
                  assetName2,
                  semanticsLabel: 'Pile',
                  color: Colors.white,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              "Autodidacte",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
