import 'package:http/http.dart' as http;
import 'dart:convert';
import '../conf/configure.dart';



getNewsResult([int page = 0]) async {
  String url =
      "http://" + config.IP + ":" + config.PORT + "/?action=getNews&page=$page";
  var res = await http.get(url);
  String body = res.body;
  print(body);
  var json = jsonDecode(body);
  print(json);
  return json["items"] as List;
}
