import 'package:flutter/material.dart';
import 'package:flutter01_client/style/font.dart';
import 'news_detail_page.dart';
import '../model/news.dart';
import '../style/index.dart';

class ProductResultLisWidget extends StatelessWidget {
  final NewsListModel list;
  final VoidCallback getNextPage;

  ProductResultLisWidget(this.list, {this.getNextPage});

  @override
  Widget build(BuildContext context) {
    return list.data.length == 0
        ? Center(
      child: CircularProgressIndicator(),
    )
        : ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      itemCount: list.data.length,
      itemBuilder: (BuildContext context, int index) {
        NewsItemModel item = list.data[index];
        if ((index + 1) == list.data.length) {
          getNextPage();
        }
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => NewsDetailPage(item: item)));
          },
          child: Container(
            color: ProductColors.bgColor,
            padding: EdgeInsets.only(top: 5, right: 5),
//            child: Row(
//              children: <Widget>[
//                Image.asset(
//                  item.imageUrl,
//                  width: 120,
//                  height: 120,
//                ),
//                SizedBox(
//                  width: 10,
//                ),
//                Expanded(
//                    child: Container(
//                      decoration: BoxDecoration(
//                          border: Border(
//                              bottom: BorderSide(
//                                  width: 1,
//                                  color: ProductColors.divideLineColor))),
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                          Text(
//                            item.desc,
//                            maxLines: 2,
//                            overflow: TextOverflow.ellipsis,
//                          ),
//                          Row(
//                            children: [
//                              SizedBox(
//                                width: 5,
//                              ),
//                              Text(
//                                item.type,
//                                style: TextStyle(
//                                    fontSize: 16.0,
//                                    color: ProductColors.typeColor),
//                              ),
//                              item.point == null
//                                  ? SizedBox()
//                                  : Container(
//                                child: Text(
//                                  item.point,
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      color: ProductColors.typeColor),
//                                ),
//                                padding:
//                                EdgeInsets.symmetric(horizontal: 3),
//                                margin: EdgeInsets.only(left: 4),
//                                decoration: BoxDecoration(
//                                    border: Border.all(
//                                        width: 1,
//                                        color:
//                                        ProductColors.typeColor)),
//                              ),
//
//                            ],
//                          ),
//                          Text(item.name,
//                              style: ProductFonts.itemNameStype),
//                        ],
//                      ),
//                    ))
//              ],
//            ),
          ),
        );
      },
    );
  }
}
