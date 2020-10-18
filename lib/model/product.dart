class ProductItemModel {
  String desc; //产品描述
  String type; //产品类型
  String name; //产品名称
  String imageUrl; //产品图片路径
  String point;//

  ProductItemModel({this.desc, this.type, this.name, this.imageUrl,this.point});

  factory ProductItemModel.fromjson(dynamic json) {
    return ProductItemModel(
      desc: json["desc"],
      type: json["type"],
      name: json["name"],
      imageUrl: json["imageUrl"],
      point: json["point"],
    );
  }
}

class ProductListModel {
  List<ProductItemModel> data;

  ProductListModel(this.data);

  factory ProductListModel.fromjson(List list) {
    return ProductListModel(
        list.map((item) => ProductItemModel.fromjson(item)).toList());
  }
}
