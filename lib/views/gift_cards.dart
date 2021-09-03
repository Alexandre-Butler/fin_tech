import 'package:flutter/material.dart';

class GiftCards extends StatefulWidget {
  @override
  _GiftCardsState createState() => _GiftCardsState();
}

class _GiftCardsState extends State<GiftCards> {
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
                    padding: EdgeInsets.only(top: 2, bottom: 2),
                    height: 48.5,
                    width: 365,
                    decoration: BoxDecoration(
                        color: Color(0xffF4D4AE),
                        borderRadius: BorderRadius.circular(9)),
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                          labelColor: Colors.black,
                          labelPadding: EdgeInsets.symmetric(horizontal: 2),
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
                                child: Text(
                                  "Virtual Cards",
                                  style: TextStyle(
                                    fontFamily: "book",
                                  ),
                                ),
                              ),
                            ),
                            MaterialButton(
                              child: Tab(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Gift Cards",
                                    style: TextStyle(
                                      fontFamily: "book",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  TabBarView(
                    children: [
                      Icon(Icons.apps),
                      Icon(Icons.movie),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
