import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learnpp/models/news.dart';
import 'package:learnpp/widgets/newsList.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'package:dio/dio.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyApp> {
  List<News> newsArray = [];
  String baseApi =
      'https://newsapi.org/v2/top-headlines?pageSize=10&apiKey=58b98b48d2c74d9c94dd5dc296ccf7b6&country=in';
  final Dio _dio = Dio();
  bool notFound = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn saad',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  //navigation
                  Navigator.pop(context);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [newsList(newsArray)],
        )),
      ),
    );
  }

  Future<void> getNewsList(String url) async {
    final Response res = await _dio.get(url);
    if (res.statusCode == 200) {
      print(res);
      List<dynamic> jsonData = res.data['articles'];

      setState(() {
        newsArray = jsonData.map((json) => News.fromJson(json)).toList();
      });
    } else {
      setState(() => notFound = true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewsList(baseApi);
  }
}
