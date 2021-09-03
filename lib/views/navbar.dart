import 'package:fin_tech/views/card.dart';
import 'package:fin_tech/views/home.dart';
import 'package:fin_tech/views/more.dart';
import 'package:fin_tech/views/transactions.dart';
import 'package:fin_tech/views/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navbar(),
  ),
  );
}

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List <Widget> _widgetOptions = <Widget>[
    Home(),
    Cards(),
    Transactions(),
    Wallet(),
    More(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined,
          color: Color(0xffEC851D),
        ),
        title: Text('Home',
        style: TextStyle(
          fontSize: 10,
          color: Color(0xffEC851D),
          fontFamily: 'nl'
        ),),
    ),

    BottomNavigationBarItem(
        icon: Icon(Icons.credit_card,
          color: Color(0xffB1B1B1),
        ),
        title: Text('Cards',
        style: TextStyle(
          fontSize: 10,
          fontFamily: 'nl',
          color: Color(0xffB1B1B1),
        ),),
    ),

    BottomNavigationBarItem(
        icon: Icon(Icons.read_more,
          color: Color(0xffB1B1B1),
        ),
        title: Text('Transaction',
        style: TextStyle(
          fontSize: 10,
          fontFamily: 'nl',
          color: Color(0xffB1B1B1),
        ),),
    ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard,
              color: Color(0xffB1B1B1),
            ),
            title: Text('Wallet',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'book',
                color: Color(0xffB1B1B1),
              ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded,
              color: Color(0xffB1B1B1),
            ),
            title: Text('More',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'nl',
                color: Color(0xffB1B1B1),
              ),),
          ),
    ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedIconTheme: IconThemeData(color: Color(0xffEC851D)),
      ),
    );
  }
}

