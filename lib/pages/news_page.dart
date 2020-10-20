import 'package:flutter/material.dart';
import '../model/news.dart';
import '../services/news.dart';
import 'news_detail_page.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsListModel listData = NewsListModel([]);
  int page = 0;

  void getNewsList() async {
    var data = await getNewsResult(page++);
    NewsListModel list = NewsListModel.fromjson(data);
    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    super.initState();
    getNewsList();
  }

  @override
  Widget build(BuildContext context) {
//    return ProductResultLisWidget(listData, getNextPage: getNewsList);
    return listData.data.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(height: 1.0, color: Colors.grey),
                itemBuilder: (BuildContext context, int index) {
                  if ((index + 1) == listData.data.length) {
                    this.getNewsList();
                  }
                  NewsItemModel item = listData.data[index];
                  return ListTile(
                    title: Text(item.title),
                    subtitle: Text(item.content),
                    leading: Icon(Icons.fiber_new),
                    trailing: Icon(Icons.arrow_forward),
                    contentPadding: EdgeInsets.all(10.0),
                    enabled: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NewsDetailPage(item: item)));
                    },
                  );
                },
                itemCount: listData.data.length),
          );
  }
}
