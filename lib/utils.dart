import 'package:flutter/material.dart';

String resume =
    """Entrepreneur de 35 ans, je suis actuellement sur Nantes, ou j’ai co-fondé, Escape Hunt Nantes, un complexe de jeu d’évasion avec mon associé. 

Je suis passionné par le milieu informatique, le developement de logiciel backend et les systèmes embarqués.

J’ai conçu tous les mécanismes présents dans les salles. Ils sont aujourd’hui totalement autonomes et maintenues par nos collaborateurs.

J'ai dirigé une équipe de 10 personnes (gestion RH, emplois du temps...).

Anciennement en charge du suivi des clients professionnels (devis, facturation, répondre aux demandes traiteur,...), cette tâche est maintenant prise en charge une par autre employée formée. 

Habitué à travailler seul avec des processus internes comme en équipe avec des personnes compétentes, je suis a l’aise autant dans les sprints que les projets de création collaboratifs.

Je suis entièrement disponible dès aujourd’hui pour proposer mes services à votre entreprise.""";

class Crea {
  @override
  Crea(
      {@required this.title,
      @required this.url,
      @required this.text,
      @required this.image});
  final String title;
  final String url;
  final String text;
  final List<String> image;
}

List<Crea> creations = [
  Crea(
      title: "Photomaton Covid proof connecté",
      url: "assets/images/photobooth.png",
      text: """Photomaton connecté permettant de gérer plusieurs photomatons.
Les photos prises, à l’aide d’une pédale sans fil, sont envoyées sur un serveur.""",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
  Crea(
      title: "System de sons 3D pour salle d’escape game",
      url: "assets/images/sound.jpg",
      text:
          "Permet la création d’ambiance sonore pour simuler des déplacements dans une pièce.",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
  Crea(
      title: "Gestion d’évènements électronique",
      url: "assets/images/gestion.jpg",
      text:
          """Mise en relation de plusieurs « énigmes » électroniques permettant la création d’une salle 
d’escape game plus rapide et intuitive.""",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
  Crea(
      title: "Carte interactive des abris de vélos sur nantes",
      url: "assets/images/abris.jpg",
      text:
          """Permet de trouver un abri ou un arceau pour garer son vélo en ville
avec une application sous Android.""",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
  Crea(
      title: "Amélioration du système Bookeo via API",
      url: "assets/images/api.png",
      text:
          "Gérer plusieurs créneaux pour de multiples réservations plus rapidement",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
  Crea(
      title: "Création du grand escape game de france",
      url: "assets/images/ehn.png",
      text: """Plus d'info en visu ;-)""",
      image: ["assets/images/photobooth.png", "assets/images/photobooth.png"]),
];
