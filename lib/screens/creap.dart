import 'package:flutter/material.dart';
import '../utils.dart';

class CreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: "avatar-$index",
              child: CircleAvatar(
                  backgroundImage: AssetImage(creations[index].url)),
            ),
            title: Text(
              creations[index].title,
              style: (TextStyle(color: Colors.white)),
            ),
            onTap: () => _openDetail(context, index),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          );
        });
  }

  _openDetail(context, index) {
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(index: index),
    );
    Navigator.push(context, route);
  }
}

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      margin: const EdgeInsets.only(right: 0.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(creations[index].title,
                          style:
                              (TextStyle(fontSize: 14, color: Colors.white)))),
                ),
              ),
              background: Hero(
                tag: "avatar-$index",
                child: Image.asset(
                  creations[index].url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(creations[index].text,
                style: (TextStyle(fontSize: 15, color: Colors.white))),
          ))
        ],
      ),
    );
  }
}
