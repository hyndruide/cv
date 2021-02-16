import 'package:flutter/material.dart';
import 'loiscreen/tech.dart';
import 'loiscreen/code.dart';
import 'loiscreen/cook.dart';
import 'loiscreen/voyage.dart';
import 'loiscreen/game.dart';
import 'loiscreen/puzzle.dart';
import 'loiscreen/cafe.dart';
import 'loiscreen/music.dart';
import 'loiscreen/escalade.dart';

class LoisirsPage extends StatefulWidget {
  @override
  _LoisirsPageState createState() => _LoisirsPageState();
}

class _LoisirsPageState extends State<LoisirsPage> {
  final pagecontroller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pagecontroller,
      children: [
        Center(child: TechPage()),
        Center(child: ClimbPage()),
        Center(child: MusicPage()),
        Center(child: CafePage()),
        Center(child: VoyPage()),
        Center(child: CookPage()),
        Center(child: PuzzPage()),
        Center(child: CodePage()),
        Center(child: GamePage()),
      ],
    );
  }
}
