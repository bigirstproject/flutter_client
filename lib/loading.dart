import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:3),(){
     print("flutter企业站启动");
     Navigator.of(context).pushReplacementNamed("company_info");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[

          Image.asset("assets/images/loading.jpeg",
              fit: BoxFit.fill,
              alignment: Alignment.center),
          Center(
              child: Text(
            "Flutter企业站",
            style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                decoration: TextDecoration.none),
          )),
        ],
      ),
    );
  }
}
