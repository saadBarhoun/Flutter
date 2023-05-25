import 'package:flutter/material.dart';
import '../models/news.dart';
import 'package:learnpp/favoriteScreen.dart';

class myNewsCard extends StatefulWidget {
  final News newsObject;
  myNewsCard(this.newsObject);

  @override
  State<myNewsCard> createState() => newsCard();
}

class newsCard extends State<myNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
          elevation: 0,
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.newsObject.title),
                      Text(widget.newsObject.description ?? "")
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => favoriteScreen()),
                                );
                              },
                              icon: Icon(Icons.favorite)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_basket)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
