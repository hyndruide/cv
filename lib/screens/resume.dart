import 'package:flutter/material.dart';
import '../utils.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("heigt : " + MediaQuery.of(context).size.height.toString());
    print("\n width : " + MediaQuery.of(context).size.width.toString());
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Text("Résumé\n",
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
          Text(
            resume,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
