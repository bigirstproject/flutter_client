import 'package:flutter/material.dart';
import '../model/news.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsItemModel item;

  NewsDetailPage({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.author),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(item.author),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(item.content),
          )
        ],
      ),
    );
  }
}
