import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'home_banner_page.dart';
import '../services/product.dart';
import '../model/product.dart';
import 'home_product_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  ProductListModel listData  =new ProductListModel([]);

  void getProductList() async{
    var data = await getProductResult();
    ProductListModel list  = ProductListModel.fromjson(data);
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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HomeBannerPage(),
          HomeProductPage(listData)
        ],
      ),
    );
  }
}
