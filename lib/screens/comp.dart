import 'package:flutter/material.dart';
import '../Widget/linelevel/linelevel.dart';

Widget lineLevelText(context, String text, int level) {
  return Column(children: [
    Text(text,
        style: TextStyle(
          color: Colors.white,
        )),
    ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
      child: LineLevel(level: level),
    ),
  ]);
}

class CompPage extends StatefulWidget {
  @override
  _ComppageState createState() => _ComppageState();
}

class _ComppageState extends State<CompPage> {
  GlobalKey<State> key = new GlobalKey();

  /// Tracks if the animation is playing by whether controller is running.

  // Listen for changes to the controller to know when an animation has
  // started or stopped playing

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Univers 2.0",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          lineLevelText(context, "Environnement Linux", 7),
          lineLevelText(context, "Environnement PC", 9),
          lineLevelText(context, "Suite Google", 8),
          lineLevelText(context, "Suite Microsoft Office", 7),
          lineLevelText(context, "Suite Adobe Creative", 8),
          lineLevelText(context, "Réseaux sociaux", 6),
          lineLevelText(context, "Trello", 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Langages informatiques",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          lineLevelText(context, "PYTHON", 6),
          lineLevelText(context, "C++", 5),
          lineLevelText(context, "postgre SQL", 6),
          lineLevelText(context, "MySQL", 7),
          lineLevelText(context, "JAVASCRIPT", 7),
          lineLevelText(context, "FLUTTER - DART", 7),
          lineLevelText(context, "NODE JS", 7),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Electronique et microélectronique",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          lineLevelText(context, "ESP32", 7),
          lineLevelText(context, "RASPBERRY PI", 6),
          lineLevelText(context, "ARDUINO", 6),
          lineLevelText(context, "PJON", 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Framework",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          lineLevelText(context, "FLUTTER", 7),
          lineLevelText(context, "Django", 7),
          lineLevelText(context, "Flask", 7),
          lineLevelText(context, "Pygame", 7),
          lineLevelText(context, "Kivy", 6),
          lineLevelText(context, "JQUERY", 5),
        ],
      ),
    );
  }
}
