import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'home_banner_page.dart';
import '../services/product.dart';
import '../model/product.dart';

class HomeProductPage extends StatelessWidget {
  final ProductListModel listData;

  HomeProductPage([this.listData]);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      width: deviceWidth,
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 7.5),
      child: _build(context, deviceWidth),
    );
  }

  _build(BuildContext context, double deviceWidth) {
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageHeight = deviceWidth * 110.0 / 360;
    List<Widget> listWidgets = listData.data.map((item) {
      return Container(
        width: itemWidth,
        margin: EdgeInsets.only(left: 2,bottom: 5),
        padding:  EdgeInsets.only(left: 13,bottom: 7,top: 10,right: 10),
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.name,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: Colors.white),),
            Text(item.desc,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: Colors.white),),
            Container(
              alignment:Alignment(0,0) ,
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(item.imageUrl,width: itemWidth,height: imageHeight),
            ),
          ],

        ),
      );
    }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 8),
          child: Text("最新产品", style: TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(51, 51, 51, 1),
          ),),
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        )
      ],
    );
  }
}
