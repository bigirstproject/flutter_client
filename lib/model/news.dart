class NewsItemModel {
  String author; //作者
  String title; //标题
  String content; //内容

  NewsItemModel({this.author, this.title, this.content});

  factory NewsItemModel.fromjson(dynamic json) {
    return NewsItemModel(
      author: json["author"],
      title: json["title"],
      content: json["content"],
    );
  }
}

class NewsListModel {
  List<NewsItemModel> data;

  NewsListModel(this.data);

  factory NewsListModel.fromjson(List list) {
    return NewsListModel(
        list.map((item) => NewsItemModel.fromjson(item)).toList());
  }
}
