import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_tech/views/carousel.dart';
import 'package:flutter/material.dart';

class VirtualCards extends StatefulWidget {
  @override
  _VirtualCardsState createState() => _VirtualCardsState();
}

class _VirtualCardsState extends State<VirtualCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 42,
                        width: 120.22,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Color(0xffFF911B).withOpacity(0.30),
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline_rounded,
                                color: Color(0xffFF911B)),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "New Card",
                              style: TextStyle(
                                color: Color(0xffFF911B),
                                fontSize: 14,
                                fontFamily: "book",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Text(
                          "₵ 12,200.85",
                          style: TextStyle(
                            fontFamily: "medium",
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    "Card Information",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "medium",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
              height: 60.63,
              width: 363.44,
              decoration: BoxDecoration(
                color: Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD NAME",
                    style: TextStyle(
                        color: Color(0xffFB9119),
                        fontFamily: "medium",
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Alexandre Butler",
                    style: TextStyle(fontFamily: "book", fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
              height: 60.63,
              width: 363.44,
              decoration: BoxDecoration(
                color: Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD NUMBER",
                    style: TextStyle(
                        color: Color(0xffFB9119),
                        fontFamily: "medium",
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "2689 - 5708 - 0547 - 2603",
                    style: TextStyle(fontFamily: "book", fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
              height: 60.63,
              width: 363.44,
              decoration: BoxDecoration(
                color: Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXPIRY DATE",
                    style: TextStyle(
                        color: Color(0xffFB9119),
                        fontFamily: "medium",
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "11/22",
                    style: TextStyle(fontFamily: "book", fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
