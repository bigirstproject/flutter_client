import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductItemModel item;

  ProductDetailPage({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(item.imageUrl, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(item.desc),
          )
        ],
      ),
    );
  }
}
