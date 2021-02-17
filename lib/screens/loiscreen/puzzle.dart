import 'package:flutter/material.dart';

class PuzzPage extends StatefulWidget {
  @override
  _PuzzPageState createState() => _PuzzPageState();
}

class _PuzzPageState extends State<PuzzPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/puzzle.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 420.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    color: Colors.white.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Casse-tête\n",
                              style: TextStyle(fontSize: 32.0)),
                          TextSpan(
                            text:
                                "C'est une de mes passions. C'es cette marotte, ma connaissance en électronique et l'informatique qui m’ont poussé a créé un escape game.",
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
