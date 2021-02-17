import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/music.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 350.0),
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 200.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    color: Colors.white.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Musique\n",
                              style: TextStyle(fontSize: 32.0)),
                          TextSpan(
                            text:
                                """Je joue de la guitare et j'ai toujours besoin de musique dans mes oreilles. Assez éclectique au niveau des genres.""",
                          )
                        ]),
                      ),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
