import 'package:flutter/material.dart';
import '../services/contact.dart';

/**
 *  给我留言
 */
class AboutContactPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutContactPageState();
  }
}

class AboutContactPageState extends State<AboutContactPage> {
  TextEditingController controller = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("给我留言"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/banners/2.jpeg", fit: BoxFit.cover),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 380,
              height: 68,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "请留言",
                    labelText: "请留言",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 48,
              width: 220.0,
              child: RaisedButton(
                child: Text(
                  "给我留言",
                  style: TextStyle(fontSize: 20),
                ),
                color: Theme.of(context).primaryColor,//Colors.redAccent,
                colorBrightness: Brightness.dark,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Colors.white, style: BorderStyle.solid),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                onPressed: () {
                  commit();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /**
   *  提交内容
   */
  void commit() {
    if (controller.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text("请输入内容")));
    } else {
      var info = getContactInfo(controller.text);
       print(info);
    }
  }
}
