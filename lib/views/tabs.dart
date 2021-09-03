import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_tech/views/carousel.dart';
import 'package:fin_tech/views/carousel_gift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff9A9696),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "nl",
                      color: Color(0xff9A9696),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 2,bottom: 2),
                    height: 48.5,
                    width: 365,
                    decoration: BoxDecoration(
                    color: Color(0xffF4D4AE),
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: DefaultTabController(
                        length: 2,
                              child: TabBar(
                                  labelColor: Colors.black,
                                  labelPadding: EdgeInsets.symmetric(horizontal:2),
                                  unselectedLabelColor: Colors.black.withOpacity(0.40),
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicator: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.white),
                                  tabs: [
                                    Tab(

                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("Virtual Cards",
                                        style: TextStyle(
                                          fontFamily: "book",
                                        ),),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("Gift Cards",
                                          style: TextStyle(
                                            fontFamily: "book",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          /*TabBarView(children: [
                            cardBody_Virtual(),
                            cardBody_Gift()
                          ]),*/
                ],
              ),
              cardBody_Gift(),
            ],
          ),
        ),
      ),
        );
  }
}

Widget cardBody_Virtual(){
return Column(
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
);
}

Widget cardBody_Gift(){
  return Column(
    children: [
      Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
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
              "Sub Category",
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
              "GIFT CARD TYPE",
              style: TextStyle(
                  color: Color(0xffFB9119),
                  fontFamily: "medium",
                  fontSize: 12),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "USA Amazon Cash Receipt",
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
              "PURCHASE AMOUNT",
              style: TextStyle(
                  color: Color(0xffFB9119),
                  fontFamily: "medium",
                  fontSize: 12),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "(₵10 - ₵1000)",
              style: TextStyle(fontFamily: "book", fontSize: 12),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 18),
            child: Text(
              "Selected Card Info",
              style: TextStyle(
                fontSize: 17,
                fontFamily: "medium",
                color: Colors.black.withOpacity(0.40),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.only(left: 18),
        padding: EdgeInsets.only(right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rate",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "book",
                color: Colors.black.withOpacity(0.40),
              ),
            ),

            Text(
              "₵240",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "medium",
                color: Color(0xff3D3D3E),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.only(left: 18),
        padding: EdgeInsets.only(right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction Value:",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "book",
                color: Colors.black.withOpacity(0.40),
              ),
            ),

            Text(
              "₵0",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "medium",
                color: Color(0xff3D3D3E),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
