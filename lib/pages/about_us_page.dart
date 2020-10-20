import 'package:flutter/material.dart';
import 'about_contact_page.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/banners/2.jpeg", fit: BoxFit.cover),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("公司介绍"),
            onTap: () {
              Navigator.of(context).pushNamed("company_info");
            },
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("公司优势"),
            onTap: () {},
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("联系我们"),
            onTap: () {},
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("给我留言"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutContactPage()));
            },
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          )
        ],
      ),
    ));
  }
}
