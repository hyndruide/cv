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
  final pagecontroller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 100.0,
            child: PageView(
              controller: pagecontroller,
              children: [CreaPage(), PolyPage(), TeamPage(), AutoPage()],
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: SmoothPageIndicator(
                controller: pagecontroller, count: 4, effect: WormEffect()),
          ),
        ],
      ),
    );
  }
}
