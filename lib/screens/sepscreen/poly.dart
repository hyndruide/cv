import 'package:flutter/material.dart';
import '../../widget/multit.dart';

class PolyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(width: 400.0, height: 300.0, child: MultiRive()),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Text(
            "Polyvalent",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ]),
    );
  }
}
