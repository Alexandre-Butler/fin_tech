import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Wallet(),
  ));
}

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello World, We are about to go LIVE!!!',
          style: TextStyle(
            color: Color(0xffD87D16),
            fontFamily: 'medium',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
