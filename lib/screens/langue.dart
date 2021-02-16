import 'package:flutter/material.dart';
import '../Widget/roundlevel/roundlevel.dart';

class LangPage extends StatelessWidget {
  /// Tracks if the animation is playing by whether controller is running.

  // Listen for changes to the controller to know when an animation has
  // started or stopped playing

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: 250.0,
                      width: 250.0,
                      child: RoundLevel(level: 4),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Français\n",
                              style: TextStyle(fontSize: 28.0)),
                          TextSpan(
                            text: "Langue maternelle\n",
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: 250.0,
                    width: 250.0,
                    child: RoundLevel(level: 3),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Anglais\n",
                            style: TextStyle(fontSize: 28.0)),
                        TextSpan(
                          text: "Parlé, lu, écrit\n",
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
