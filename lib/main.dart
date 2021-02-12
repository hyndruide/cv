import 'package:flutter/material.dart';
import 'screens/screen_route.dart';
import 'screens/resume.dart';
import 'screens/langue.dart';
import 'screens/comp.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.blueGrey,
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
        ),
      ),
      title: "Mon Cv",
      home: AppSc(screen: Resume()),
      routes: <String, WidgetBuilder>{
        "/resume": (BuildContext context) => AppSc(screen: LangPage()),
        "/exp": (BuildContext context) => AppSc(screen: LangPage()),
        "/crea": (BuildContext context) => AppSc(screen: LangPage()),
        "/lang": (BuildContext context) => AppSc(screen: LangPage()),
        "/spe": (BuildContext context) => AppSc(screen: LangPage()),
        "/comp": (BuildContext context) => AppSc(screen: CompPage()),
        "/form": (BuildContext context) => AppSc(screen: LangPage()),
        "/loisir": (BuildContext context) => AppSc(screen: LangPage())
      },
    );
  }
}
