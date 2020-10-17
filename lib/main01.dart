import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '商城项目',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page 12'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String str = "测试数据";

  @override
  void initState() {
    super.initState();
    print("_MyHomePageState 初始化111");
  }

  void _setText(String str) {
    setState(() {
      this.str = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${str}', style: Theme.of(context).textTheme.headline6),
            RaisedButton(
                child: Text("getProducts数据接口"),
                onPressed: () async {
                  String url = "http://192.168.1.100:8080?action=getProducts";
                  var res = await http.get(url);
                  String body = res.body;
                  _setText(body);
                  print("body = " + body);
                  var json = jsonDecode(body);
                  print(json);
                }),
            RaisedButton(
                child: Text("news数据接口"),
                onPressed: () async {
                  String url = "http://192.168.1.100:8080?action=news";
                  var res = await http.get(url);
                  String body = res.body;
                  _setText(body);
                  print("body = " + body);
                  var json = jsonDecode(body);
                  print(json);
                })
          ],
        ),
      ),
    );
  }
}
