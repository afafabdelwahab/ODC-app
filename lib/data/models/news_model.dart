import 'dart:convert';

import 'package:flutter/cupertino.dart';

class NewsModel{
   String? code;
   String? message;
  List<DataModel> data=[];
  NewsModel.fromjson(Map<String,dynamic> jsonData)
  {
    code=jsonData['code'];
    message=jsonData['message'];
    for(Map<String,dynamic> json in jsonData['data'])
      {
        data.add(DataModel.fromjson(jsonData));
      }

  }
}
class DataModel{
  final int id;
  String date;
  String body;
  String title;
  String linkUrl;
  NetworkImage image;
  DataModel({
    required this.id,
    required this.date,
    required this.body,
    required this.image,
    required this.linkUrl,
    required this.title,
});

  factory DataModel.fromjson(Map<String,dynamic> jsonData)
  {
    return DataModel(
        id: jsonData['id'],
        date: jsonData['date'],
        body: jsonData['body'],
        image: jsonData['imageUrl'],
        linkUrl: jsonData['linkUrl'],
        title: jsonData['title'],

    );
  }
}