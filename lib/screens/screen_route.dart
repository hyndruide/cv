import 'package:flutter/material.dart';
import 'drawer.dart';

class AppSc extends StatelessWidget {
  final Widget screen;
  String title = "Mon CV";
  AppSc({@required this.screen, this.title});

  @override
  Widget build(BuildContext context) {
    String _title = title;
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(_title),
          )),
        ),
        body: Container(
          child: this.screen,
        ),
        drawer: Drawer(
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.purple,
              gradient: new LinearGradient(
                  colors: [Colors.grey, Colors.grey[300]],
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft),
            ),
            child: ListView(
              children: [
                DrawerHeader(padding: EdgeInsets.all(0.0), child: SideHeader()),
                for (ListTile menuelem in loadMenu(context)) menuelem,
              ],
            ),
          ),
        ));
  }
}
