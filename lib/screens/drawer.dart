import 'package:flutter/material.dart';

class SideHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(45.0)),
              child: Image(
                image: AssetImage("assets/images/imgcv.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Denis Ulric",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Text(
                "Développeur",
                style: TextStyle(color: Colors.white60, fontSize: 10.0),
              ),
            ]),
          )
        ]);
  }
}

Map<String, IconData> menuElem = {
  "Résume": Icons.book_rounded,
  'Expériences professionnelles': Icons.library_add_check_sharp,
  "Creations Personnelles": Icons.computer,
  "Langues": Icons.theater_comedy,
  "Spécialités": Icons.science,
  "Compétences": Icons.trending_up,
  "Formation": Icons.cast_for_education,
  "Loisir": Icons.gamepad
};

List<String> route = [
  "/resume",
  "/exp",
  "/crea",
  "/lang",
  "/spe",
  "/comp",
  "/form",
  "/loisir"
];

List<ListTile> loadMenu(BuildContext context) {
  List<ListTile> menus = [];
  for (int i = 0; i < menuElem.length; i++) {
    String key = menuElem.keys.elementAt(i);
    ListTile elem = ListTile(
      title: Text("$key",
          style: TextStyle(
            color: Colors.white,
          )),
      leading: Icon(menuElem[key]),
      onTap: () {
        Navigator.of(context).pushNamed(route[i]);
      },
    );
    menus.add(elem);
  }
  return menus;
}
