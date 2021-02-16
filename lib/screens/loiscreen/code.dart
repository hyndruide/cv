import 'package:flutter/material.dart';

class CodePage extends StatefulWidget {
  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/code.png"),
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
                    color: Colors.white.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(color: Colors.grey[800]),
                            children: [
                              TextSpan(
                                  text: "Programmation\n",
                                  style: TextStyle(fontSize: 32.0)),
                              TextSpan(
                                style: TextStyle(fontWeight: FontWeight.w600),
                                text:
                                    """J'ai decouvert la programmation avec le BASIC sur un Amstrad CPC, depuis je continue de découvrir de nouveau language et surtout de nouvelle possibilité""",
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
