import 'package:flutter/material.dart';

class ClimbPage extends StatefulWidget {
  @override
  _ClimbPageState createState() => _ClimbPageState();
}

class _ClimbPageState extends State<ClimbPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loisirs/escalade.png"),
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
                    color: Colors.white.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(color: Colors.grey[700]),
                            children: [
                              TextSpan(
                                  text: "Esacalade\n",
                                  style: TextStyle(fontSize: 32.0)),
                              TextSpan(
                                text:
                                    """Découvert tardivement, très agréable pour se défouler et se surpasser physiquement.""",
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
