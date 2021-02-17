import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CreaPage extends StatefulWidget {
  @override
  _CreaPageState createState() => _CreaPageState();
}

class _CreaPageState extends State<CreaPage> with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _controller.repeat(
        min: 0.0, max: 1.0, reverse: true, period: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/images/lampe.svg';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            // Center(
            //   child: Container(
            //     color: Colors.yellowAccent,
            //     height: 300,
            //     width: 300,
            //     decoration:
            //   ),
            // ),
            Center(
              child: FadeTransition(
                opacity: this._controller,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 200.0,
                      height: 300.0,
                      child: SvgPicture.asset(
                        assetName,
                        width: 200.0,
                        semanticsLabel: 'Lampe',
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Text(
            "Creatif",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
