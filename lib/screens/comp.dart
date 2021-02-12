import 'package:flutter/material.dart';
import '../Widget/linelevel/linelevel.dart';

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
    return ListView(
      children: [
        Text("toto1",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(level: 5, name: "toto1"),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto2",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto3",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto4",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto5",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto6",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto7",
          ),
        ),
        Text("Environnement Linux",
            style: TextStyle(
              color: Colors.white,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 80.0, maxWidth: MediaQuery.of(context).size.width),
          child: LineLevel(
            level: 8,
            name: "toto8",
          ),
        ),
      ],
    );
  }
}
