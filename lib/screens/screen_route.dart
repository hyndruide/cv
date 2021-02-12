import 'package:flutter/material.dart';
import 'drawer.dart';

class AppSc extends StatelessWidget {
  final Widget screen;
  AppSc({@required this.screen});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Mon CV")),
        ),
        body: Container(
          child: this.screen,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(padding: EdgeInsets.all(0.0), child: SideHeader()),
              for (ListTile menuelem in loadMenu(context)) menuelem,
            ],
          ),
        ));
  }
}
