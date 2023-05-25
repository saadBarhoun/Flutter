import 'package:flutter/material.dart';

class favoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Favorite saad',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  //navigation
                  Navigator.pop(context);
                },
                icon: Icon(Icons.back_hand))
          ],
        ),
        body: Card(
          child: Text('Favoarite'),
        ),
      ),
    );
  }
}
