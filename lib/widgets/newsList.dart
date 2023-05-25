import 'package:flutter/material.dart';
import 'package:learnpp/models/news.dart';
import './newsCard.dart';

class newsList extends StatelessWidget {
  final List<News> _cardsList;

  newsList(this._cardsList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: _cardsList.length,
        itemBuilder: (context, index) {
          if (_cardsList.isEmpty)
            return Text('empty');
          else
            return myNewsCard(_cardsList[index]);
        },
      ),
    );
  }
}
