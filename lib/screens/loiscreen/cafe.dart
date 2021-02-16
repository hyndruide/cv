import 'package:flutter/material.dart';

class CafePage extends StatefulWidget {
  @override
  _CafePageState createState() => _CafePageState();
}

class _CafePageState extends State<CafePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/cafe.png"),
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
                              text: "Pause Café ?\n",
                              style: TextStyle(fontSize: 32.0)),
                          TextSpan(
                            text:
                                """Prendre le temps d'une pause est intéressant, pour faire évoluer les idées et sortir la tête dans le guidon""",
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
