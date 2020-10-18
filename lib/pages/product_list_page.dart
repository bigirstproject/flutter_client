import 'package:flutter/material.dart';
import 'package:flutter01_client/services/product.dart';
import '../model/product.dart';

class ProductResultLisWidget extends StatelessWidget {
  final ProductListModel list;
  final VoidCallback getNextPage;

  ProductResultLisWidget(this.list, {this.getNextPage});

  @override
  Widget build(BuildContext context) {
    return list.data.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: list.data.length,
            itemBuilder: (BuildContext context, int index) {
              ProductItemModel item = list.data[index];
              if ((index + 4) == list.data.length) {
                getNextPage();
              }
              return ListTile(
                title: Text(item.name),
              );
            },
          );
  }
}
