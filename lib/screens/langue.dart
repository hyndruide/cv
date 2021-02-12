import 'package:flutter/material.dart';
import '../Widget/roundlevel/roundlevel.dart';

class LangPage extends StatelessWidget {
  /// Tracks if the animation is playing by whether controller is running.

  // Listen for changes to the controller to know when an animation has
  // started or stopped playing

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200.0, maxWidth: 200.0),
              child: RoundLevel(level: 2),
            ),
            Text("coucou",
                style: TextStyle(
                  color: Colors.white,
                )),
          ]),
          Row(children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200.0, maxWidth: 200.0),
              child: RoundLevel(level: 3),
            ),
            Text("couccqou",
                style: TextStyle(
                  color: Colors.white,
                )),
          ]),
        ],
      ),
    );
  }
}
