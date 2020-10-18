import 'package:flutter/material.dart';
import 'package:flutter01_client/services/product.dart';
import 'product_list_page.dart';
import '../model/product.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductListModel listData = ProductListModel([]);
  int page = 0;

  void getProductList() async {
    var data = await getProductResult(page++);
    ProductListModel list = ProductListModel.fromjson(data);
    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return ProductResultLisWidget(listData, getNextPage: getProductList);
  }
}
