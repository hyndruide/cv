import 'package:flutter/material.dart';

class TechPage extends StatefulWidget {
  @override
  _TechPageState createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/tech.png"),
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
                              text: "Technologie\n",
                              style: TextStyle(fontSize: 32.0)),
                          TextSpan(
                            text:
                                """je parle surtout de la technologie dans le sens du maker : \nquelqu’un d’inventif qui fabrique lui-même des objets utiles à sa vie quotidienne, un informaticien qui bricole ses propres drones ou robots, ou encore un artiste qui détourne des objets…""",
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
