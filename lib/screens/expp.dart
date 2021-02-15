import 'package:flutter/material.dart';
import '../widget/blurtextanim.dart';
import '../widget/numanim.dart';
import 'package:number_slide_animation/number_slide_animation.dart';

class ExpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlurTextAnim(text: "6", fontsize: 180.0),
              Padding(
                padding: const EdgeInsets.only(top: 72.0),
                child: Text(
                    "2015 - Aujourd’hui \nDirecteur General\nEscape Hunt Nantes\nLoire Atlantique (44)",
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NumAnim(numb: 6, fontsize: 180.0),
            Padding(
              padding: const EdgeInsets.only(top: 72.0),
              child: Text(
                  "2004 à 2010\nDirecteur adjoint\nMoto Liberté 11\nConques sur Orbiel (11)\n",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NumberSlideAnimation(
              number: "2",
              duration: const Duration(seconds: 3),
              curve: Curves.decelerate,
              textStyle: TextStyle(
                  fontSize: 180.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 72.0),
              child: Text(
                  "2013 à 2015\nMontage domotique\nConsultant\nVaulnaveys-le-Haut (38)\n",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NumAnim(numb: 3, fontsize: 180.0),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                  "2007 à 2010\nMontage son\nvidéo/informatique\nDiverses entreprises\nIsère (38)\n",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            )
          ],
        ),
      ]),
    );
  }
}
