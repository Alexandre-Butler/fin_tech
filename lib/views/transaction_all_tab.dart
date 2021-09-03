import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionAllTab extends StatefulWidget {
  @override
  _TransactionAllTabState createState() => _TransactionAllTabState();
}

class _TransactionAllTabState extends State<TransactionAllTab> {
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
              Container(
                height: 39.64,
                margin: EdgeInsets.only(top: 20),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      unselectedLabelColor: Color(0xffEC851D).withOpacity(0.50),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffEC851D)),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("All"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Sent"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Received"),
                            ),
                          ),
                        ),
                      ]),
                ),
                /*body: TabBarView(children: [
                  Icon(Icons.apps),
                  Icon(Icons.movie),
                  Icon(Icons.games),
                ]),*/
              ),
              Received(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget all() {
  return SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          /*Row(
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
              ),
            ],
          ),*/
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'book',
                    color: Color(0xffEC851D),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/momo.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.70),
                                fontFamily: 'medium',
                                fontSize: 16,
                              ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Sun, 2 Jan at 12:15',
                              style: TextStyle(
                                fontFamily: 'book',
                                color: Color(0xffC5C5C5),
                              ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 330',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.green
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/ecobank.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alexandre Butler',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.70),
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Mon, 21 Jan at 2:19',
                            style: TextStyle(
                              fontFamily: 'book',
                              color: Color(0xffC5C5C5),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text('GHS 500',
                      style: TextStyle(
                          fontFamily: 'book',
                          color: Colors.green
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/at.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alexandre Butler',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.70),
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Wed, 11 Feb at 9:22',
                            style: TextStyle(
                              fontFamily: 'book',
                              color: Color(0xffC5C5C5),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text('GHS 20',
                      style: TextStyle(
                          fontFamily: 'book',
                          color: Colors.red
                      ),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/ecg.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alexandre Butler',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.70),
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Sat, 18 Jan at 3:45',
                            style: TextStyle(
                              fontFamily: 'book',
                              color: Color(0xffC5C5C5),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text('GHS 50',
                      style: TextStyle(
                          fontFamily: 'book',
                          color: Colors.red
                      ),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 3, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/vf.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alexandre Butler',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.70),
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Fri, 1 Feb at 8:30',
                            style: TextStyle(
                              fontFamily: 'book',
                              color: Color(0xffC5C5C5),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text('GHS 1000',
                      style: TextStyle(
                          fontFamily: 'book',
                          color: Colors.green
                      ),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffEDEDED),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/multichoice.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alexandre Butler',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.70),
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Tue, 12 Jan at 1:50',
                            style: TextStyle(
                              fontFamily: 'book',
                              color: Color(0xffC5C5C5),
                            ),
                          ),
                        ],
                      ),
                      //Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text('GHS 250',
                      style: TextStyle(
                        fontFamily: 'book',
                        color: Colors.red
                      ),),
                  ),
                ],
              ),
            ),
          ),
              SizedBox(
                height: 20,
              ),
        ],
      ),
        ],
      ),
    ),
  );
}

Widget sent(){
  return SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'book',
                    color: Color(0xffEC851D),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [

              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/at.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Wed, 11 Feb at 9:22',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 20',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.red
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/ecg.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Sat, 18 Jan at 3:45',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 50',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.red
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/multichoice.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tue, 12 Jan at 1:50',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 250',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.red
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget Received(){
  return SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'book',
                    color: Color(0xffEC851D),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/momo.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Sun, 2 Jan at 12:15',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 330',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.green
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/ecobank.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Mon, 21 Jan at 2:19',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 500',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.green
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 70,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEDEDED),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 3, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/vf.png'),
                                )
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Alexandre Butler',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.70),
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Fri, 1 Feb at 8:30',
                                style: TextStyle(
                                  fontFamily: 'book',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                            ],
                          ),
                          //Spacer(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text('GHS 1000',
                          style: TextStyle(
                              fontFamily: 'book',
                              color: Colors.green
                          ),),
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
  );
}
