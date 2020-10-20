import 'package:http/http.dart' as http;
import '../conf/configure.dart';

getContactInfo(String msg) async {
  String url =
      "http://" + config.IP + ":" + config.PORT + "/?action=contactCompany&msg=$msg";
  var res = await http.get(url);
  String body = res.body;
  print(body);
  return body;
}
