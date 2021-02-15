import 'package:flutter/material.dart';

class CreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/photobooth.png")),
        title: Text("Photomaton Covid proof connecté",
            style: (TextStyle(color: Colors.white))),
        trailing: Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
      ),
    ]);
  }
}
