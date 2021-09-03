import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: More(),
  ));
}

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      alignment: Alignment.center,
                      child: Container(
                        width: 317.36,
                        height: 246.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/more.png',
                                ),
                                fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text("Refer a friend and earn up to 15% of your friend’s first transactions.",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'medium',
                      color: Color(0xffC5C5C5),
                    ),
                    textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
                      height: 83,
                      width: 365,
                      decoration: BoxDecoration(
                        color: Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "REFERRAL CODE",
                            style: TextStyle(
                                color: Color(0xffFB9119),
                                fontFamily: "medium",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Text(
                            "26EAYN",
                            style: TextStyle(fontFamily: "medium", fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
