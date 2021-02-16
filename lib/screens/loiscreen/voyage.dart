import 'package:flutter/material.dart';

class VoyPage extends StatefulWidget {
  @override
  _VoyPageState createState() => _VoyPageState();
}

class _VoyPageState extends State<VoyPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/voyage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 420.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    color: Colors.white.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(color: Colors.grey[700]),
                            children: [
                              TextSpan(
                                  text: "Voyages\n",
                                  style: TextStyle(fontSize: 32.0)),
                              TextSpan(
                                text:
                                    """En ce moment c'est un peu difficile. J'aime mieux les voyages avec un grand sac à dos que les tour-opérateurs.""",
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
