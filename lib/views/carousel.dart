import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'images/debit.png',
  'images/debit_tw.png',
  'images/debit_te.png',
];

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(14.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.fitWidth, width: 1500.0, height: 800,),
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

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
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
      items: imageSliders,
    ),
    ],
    ),
    );
  }
}

