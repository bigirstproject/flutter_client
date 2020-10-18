import 'package:http/http.dart' as http;
import 'dart:convert';
import '../conf/configure.dart';

getProductResult([int page = 0]) async {
  String url = "http://" +
      config.IP +
      ":" +
      config.PORT +
      "/?action=getProducts&page=$page";
  var res = await http.get(url);
  String body = res.body;
  print(body);
  var json = jsonDecode(body);
  print(json);
  return json["items"] as List;
}
