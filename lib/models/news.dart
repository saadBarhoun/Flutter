import 'package:flutter/material.dart';

class News {
  String title;
  String? description;

  News({required this.title, this.description});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      description: json['description'],
    );
  }
}
