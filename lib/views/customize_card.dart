import 'package:flutter/material.dart';

class CustomizeCard extends StatefulWidget {
  @override
  _CustomizeCardState createState() => _CustomizeCardState();
}

class _CustomizeCardState extends State<CustomizeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
