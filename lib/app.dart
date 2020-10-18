import 'package:flutter/material.dart';
import 'pages/about_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;
  HomePage homePage;
  NewsPage newsPage;
  ProductPage productPage;
  AboutUsPage aboutUsPage;

  //根据索引返回不同的页面
  Widget currentPage(_currentIndex) {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          return new HomePage();
        }
        return homePage;
        break;
      case 1:
        if (newsPage == null) {
          return new NewsPage();
        }
        return newsPage;
        break;
      case 2:
        if (productPage == null) {
          return new ProductPage();
        }
        return productPage;
        break;
      case 3:
        if (aboutUsPage == null) {
          return new AboutUsPage();
        }
        return aboutUsPage;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //头部appbar
      appBar: AppBar(
        title: Text("flutter企业站实战"),
        leading: Icon(Icons.home),
        actions: <Widget>[
          //右侧内边距
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.search),
              ))
        ],
      ),
      body: this.currentPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        //设置item颜色
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        //底部导航栏
        items: [
          BottomNavigationBarItem(
              label: "首页",
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_work),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "产品",
              icon: Icon(Icons.apps),
              activeIcon: Icon(Icons.apps),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              label: "新闻",
              icon: Icon(Icons.fiber_new),
              activeIcon: Icon(Icons.fiber_new),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              label: "关于我们",
              icon: Icon(Icons.insert_comment),
              activeIcon: Icon(Icons.insert_comment),
              backgroundColor: Colors.red)
        ],
      ),
    );
  }
}
