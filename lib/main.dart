import 'package:flutter/material.dart';
import 'package:flutter01_client/loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter企业站实战",
    //自定义主题
    theme: mThemeData,
    routes: <String, WidgetBuilder>{
      "app": (BuildContext context) => App(),
      "company_info": (BuildContext context) => WebviewScaffold(
            url: "https:wwww.baidu.com",
            appBar: AppBar(
              title: Text("公司介绍"),
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print("公司介绍onPressed");
                  Navigator.of(context).pop("company_info");
                },
              ),
            ),
          ),
    },
    home: LoadingPage(),
  ));
}

final ThemeData mThemeData = ThemeData(primaryColor: Colors.redAccent);
