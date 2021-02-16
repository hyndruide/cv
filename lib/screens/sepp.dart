import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'sepscreen/crea.dart';
import 'sepscreen/team.dart';
import 'sepscreen/poly.dart';
import 'sepscreen/autod.dart';

class SpePage extends StatefulWidget {
  @override
  _SpePageState createState() => _SpePageState();
}

class _SpePageState extends State<SpePage> {
  final pagecontroller = PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 570,
            child: PageView(
              controller: pagecontroller,
              children: [
                Center(child: CreaPage()),
                Center(child: PolyPage()),
                Center(child: TeamPage()),
                Center(child: AutoPage())
              ],
            ),
          ),
          Transform.scale(
            scale: 0.3,
            child: SmoothPageIndicator(
                controller: pagecontroller, count: 4, effect: WormEffect()),
          ),
        ],
      ),
    );
  }
}
