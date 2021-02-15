import 'package:flutter/material.dart';
import 'langue.dart';

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
    return PageView(
      controller: pagecontroller,
      children: [
        Center(child: CreaPage()),
        Center(child: PolyPage()),
        Center(child: TeamPage()),
        Center(child: AutoPage())
      ],
    );
  }
}
