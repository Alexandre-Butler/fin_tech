import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xffFF852D),
                  const Color(0xffFF9C09),
                ],
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Text("Welcome back",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "nl",
                    color: Colors.white,
                  ),),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Text("Alexandre Quainoo",
                  style: TextStyle(
                    fontFamily: "nb",
                    fontSize: 30,
                    color: Colors.white,
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 136.67,
                    width: 355.74,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20,top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Balance",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "nl"
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          Text("₵850,000.00",
                          style: TextStyle(
                            fontFamily: "nb",
                            fontSize: 28,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: MaterialButton(
                                  minWidth: 107.59,
                                  height: 48.47,
                                  textColor: Colors.white,
                                  elevation: 20,
                                  child: Text(
                                    'Sell',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'medium',
                                      color: Color(0xffD87D16),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: MaterialButton(
                                  minWidth: 107.59,
                                  height: 48.47,
                                  textColor: Colors.white,
                                  elevation: 10,
                                  child: Text(
                                    'Pay',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'medium',
                                      color: Color(0xffD87D16),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Container(
                            height: 486.58,
                            width: 414,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20,top: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Transactions",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "medium",
                                        ),),
                                      Text("See All",
                                        style: TextStyle(
                                          fontFamily: "book",
                                          fontSize: 14,
                                          color: Color(0xffBDBDBD),
                                        ),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Paid for Food",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "medium",
                                        ),
                                      ),
                                      Text("₵120",
                                        style: TextStyle(
                                          fontFamily: "nl",
                                          fontSize: 14,
                                          color: Colors.red,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("12th Jan",
                                    style: TextStyle(
                                      fontFamily: "book",
                                      fontSize: 12,
                                    ),),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Paid for Airtime",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "medium",
                                        ),
                                      ),
                                      Text("₵50",
                                        style: TextStyle(
                                          fontFamily: "nl",
                                          fontSize: 14,
                                          color: Colors.red,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("18th Jan",
                                    style: TextStyle(
                                      fontFamily: "book",
                                      fontSize: 12,
                                    ),),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Paid for Transportation",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "medium",
                                        ),
                                      ),
                                      Text("₵20",
                                        style: TextStyle(
                                          fontFamily: "nl",
                                          fontSize: 14,
                                          color: Colors.red,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("24th Jan",
                                    style: TextStyle(
                                      fontFamily: "book",
                                      fontSize: 12,
                                    ),),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("Our Offers",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "medium",
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
