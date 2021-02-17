import 'package:flutter/material.dart';
import 'screens/screen_route.dart';
import 'screens/resume.dart';
import 'screens/langue.dart';
import 'screens/comp.dart';
import 'screens/expp.dart';
import 'screens/creap.dart';
import 'screens/sepp.dart';
import 'screens/formp.dart';
import 'screens/loisirPage.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String titre = "Mon CV";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      title: titre,
      home: AppSc(
        screen: Resume(),
        title: "Résumé",
      ),
      routes: <String, WidgetBuilder>{
        "/resume": (BuildContext context) =>
            AppSc(screen: Resume(), title: "Résumé"),
        "/exp": (BuildContext context) =>
            AppSc(screen: ExpPage(), title: "Expérience"),
        "/crea": (BuildContext context) =>
            AppSc(screen: CreaPage(), title: "Creation"),
        "/lang": (BuildContext context) =>
            AppSc(screen: LangPage(), title: "Langue"),
        "/spe": (BuildContext context) =>
            AppSc(screen: SpePage(), title: "Spécialité"),
        "/comp": (BuildContext context) =>
            AppSc(screen: CompPage(), title: "Compétence"),
        "/form": (BuildContext context) =>
            AppSc(screen: FormPage(), title: "Formation"),
        "/loisir": (BuildContext context) =>
            AppSc(screen: LoisirsPage(), title: "Loisir")
      },
    );
  }
}
