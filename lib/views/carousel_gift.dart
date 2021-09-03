import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_tech/views/carousel.dart';
import 'package:flutter/material.dart';

final List<String> imgList_2 = [
  'images/amazon.png',
  'images/bu.png',
  'images/walmart.png',
];

final List<Widget> imageSliders_2 = imgList_2.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(14.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.fitWidth, width: 1500.0, height: 500,),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                ),
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();

class CarouselGift extends StatefulWidget {
  @override
  _CarouselGiftState createState() => _CarouselGiftState();
}

class _CarouselGiftState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders_2,
          ),
        ],
      ),
    );
  }
}

