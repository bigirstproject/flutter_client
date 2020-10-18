import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class HomeBannerPage extends StatefulWidget {
  @override
  _HomeBannerPageState createState() => _HomeBannerPageState();
}

class _HomeBannerPageState extends State<HomeBannerPage> {

  List<String> banners = [
    "assets/images/banners/1.jpeg",
    "assets/images/banners/2.jpeg",
    "assets/images/banners/3.jpeg",
    "assets/images/banners/4.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = width * 540 / 1080;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Image.asset(banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
}
